class UserController < ApplicationController
  def profile
    @user = current_user

    if request.post?
       current_user.name = params[:name]
       current_user.profile = params[:profile]
       current_user.save

       redirect_back fallback_location: root_path
    end
  end
end
