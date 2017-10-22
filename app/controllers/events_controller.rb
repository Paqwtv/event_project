class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    if params[:search]
      @events = @events.search(params[:search])
    end
    create_map(@events)
  end

  # GET /events/1
  # GET /events/1.json
  def show
    create_map(@event)
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params.merge(profile_id: current_user.profile.id))
    @event.author = current_user.profile.user_name
    # @category = Category.find(params[:id])
    # puts '>>>>', @category
    #@event.categories << @category
    @event.save

    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :edit
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def create_map events
      @hash = Gmaps4rails.build_markers(events) do |event, marker|
        marker.lat event.latitude
        marker.lng event.longitude
        marker.infowindow event.title
      end
      append_cur_location
    end

    def append_cur_location
      @hash << { :lat=>action[0], :lng=>action[1]}      
    end

    def action
      @lat_lng = cookies[:lat_lng].split("|")
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:author, :title, :description, :date_time, :latitude, :longitude, :private, :contacts, :category_ids => [])
    end
end
