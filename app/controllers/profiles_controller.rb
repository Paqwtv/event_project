class ProfilesController < ApplicationController
 # before_action :authenticate_user!
  before_action :set_profile, only: [:show, :edit, :update]

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    if user_signed_in?
      puts "вошел"
      get_profile = Profile.find(params[:id])
      puts get_profile.id
      @profile = Profile.find(current_user.profile.id)
      puts @profile.id
      if get_profile.id == @profile.id
        @profile
      else
        puts "нет доступа"
        render :status => 404
      end
    else
      puts "Необходимо войти"
      render :status => 404
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
