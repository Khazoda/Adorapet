class LandingPageController < ApplicationController
  layout "landing_page"
  def index
  end

  def contact
  end

  def request_contact 
    name = params[:name] 
    email = params[:email]
    message = params[:message]
    # Emulates sending an email using the mailer
    ContactMailer.contact_email(email, name, message).deliver_now

    redirect_to root_path end
end
