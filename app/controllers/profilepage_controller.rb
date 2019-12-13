class ProfilepageController < ApplicationController
  include Devise::Controllers::Helpers 
  
  layout "profilepage"

  def profile
  end
  # attaches the avatar that the user uploaded via active storage to the avatar field linked to the current user in the active storage blobs table (and takes user back to profile page)
  def attachprofilepicture
    current_user.avatar.attach(params[:avatar])
    redirect_to profilepage_path
  end
   
  def addpet
  end 
end
