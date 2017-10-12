class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:show, :edit, :update]

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    cur_user_prof = !current_user.nil? ? current_user.profile : nil 
    if cur_user_prof.id != @profile.id
      puts "нет доступа"
      # raise ActionController::RoutingError.new('Not Found')
      render :file => "#{Rails.root}/public/404.html",  :status => 404
    else
      render
    end
  end

  def index
    @profiles = Profile.all
  end


  # GET /profiles/1/edit
  def edit
  end


  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:user_name, :gender)
    end
end
