class ProfilepageController < ApplicationController
  include Devise::Controllers::Helpers 
  
  layout "profilepage"

  def profile
  end
  def attachprofilepicture
    current_user.avatar.attach(params[:avatar])
    redirect_to profilepage_path
  end
  
  
  def addpet
  end

  def addpicture
    
  end
  



  
end
