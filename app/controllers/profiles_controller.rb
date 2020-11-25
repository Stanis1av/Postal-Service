class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(current_user.id)
  end

  def edit
    @profile = Profile.find(current_user.id)
  end

  def update
    @profile = Profile.find(current_user.id)

    if @profile.update(profile_params)
      redirect_to profile_path
    else
      render action: 'edit'
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :home_address)
  end
end
