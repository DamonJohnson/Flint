class ProfilesController < ApplicationController
# REMOVE FOR PRODUCTION!
skip_before_action :verify_authenticity_token
# before_action :authenticate_user!
before_action :list_states, only: [:new, :edit]
before_action :find_profile, only: [:show, :edit, :update, :destroy]

respond_to :html

  def index
    @profiles = Profile.all
  end

  def new
    # @profile = Profile.new
    @profile = current_user.profile
  end

def create
  # @profile = current_user.build_profile(profile_params)
  # @profile = current_user.profile.create(profile_params)
  # if @profile.save
  #   flash[:success] = "Profile saved"
  #   redirect_to @profile
  # else
  #   flash[:error] = "Error"
  #   redirect_to new
  # end

  @profile = current_user.build_profile
  @profile.user_id = current_user.id
  @profile.save
  render plain: @profile.id
  # redirect_to show
    
    # @profile = Profile.new(profile_params)
    # @profile.save
end

  def show
    @profile = Profile.find(params[:id])
  end

def edit
  
end

def update
  @profile = current_user.profile.find(params[:id])
  if @profile.update_attributes(profile_params)
    flash[:success] = "Successfully updated"    # Optional
    redirect_to user_path
  else
    flash[:error] = "Error"       # Optional
    render :edit
  end
end


  private

    def find_profile
      @profile = Profile.find(params[:id])
    end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :address, :city, :postode, :state)
  end

  def list_states
   @states = ['New South Wales', 'Victoria', 'Queensland', 'Western Australia', 'South Australia', 'Tasmania', 'Australian Capital Territory', 'Northern Territory']
  end
end