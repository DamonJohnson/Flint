class ProfilesController < ApplicationController
  before_action :list_states, only: [:new, :edit]
  

  def show
    render json: current_user.id
  end

  def create
    # current_user.profiles.create(profile_params)
    params[:user_id] = current_user.id
    # render json: params
    @profile = Profile.create(request.params)
  end

  def new
    
  end

  def edit
    
  end

  def update
  end

  def destroy
  end

  private

  def list_states
   @states = ['New South Wales', 'Victoria', 'Queensland', 'Western Australia', 'South Australia', 'Tasmania', 'Australian Capital Territory', 'Northern Territory']
  end
  

  def profile_params
    @params=  params.require(:profile).permit(:first_name, :last_name, :address, :city, :postode, :state)
  end

end
