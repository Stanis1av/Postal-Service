class ProfileController < ApplicationController
  def index
    @profile = Profile.find(params[:id]).user_id
  end
end
