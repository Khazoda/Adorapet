class ProfilepageController < ApplicationController
  include Devise::Controllers::Helpers 
  
  layout "profilepage"

  def profile
    
  end
  def attachprofilepicture
    current_user.avatar.attach(params[:avatar])
  end
end
