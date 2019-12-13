class LandingPageController < ApplicationController
  layout "landing_page"
  before_action :authenticate_user!
  def index

    # Calculating user total likes and most liked pet
    totalLikes = Pet.where(user_id: current_user.id).sum(:likes)
    current_user.likes = totalLikes
    current_user.save
    # EXPLANATION: For the above code, only the currently logged in user's score is
    # updated in the database. If after every voting game every single user's likes were updated it would
    # waste server resources in a larger scale production environment. The leaderboard only
    # updates a user's score when they visit the leaderboard page (which runs this controller action)
    
    # enters the user's pet with the most likes into the pet_id column in the user's database and saves it
    userpets = Pet.where(user_id: current_user.id)
    topPet = userpets.order("likes DESC").first
    if topPet != nil
      current_user.pet_id = topPet.id
      current_user.save
    end
    

    # Sets of all users and pets for leaderboard display  
    @lbusers = User.order(likes: :desc)
    @lbpets = Array.new
    # @lbpets = Pet.order(likes: :desc)

    # adds the  user's best pet to the lbpets var to be used in the leaderboard partial on the landing page
    for user in @lbusers do
      @lbpets.push(Pet.where(id: user.pet_id))
    end
    @lbpets = @lbpets.as_json
    
    
  end

  def contact
  end

  def request_contact 
    name = params[:name] 
    email = params[:email]
    message = params[:message]
    # Emulates sending an email using the mailer
    ContactMailer.contact_email(email, name, message).deliver_now

    redirect_to root_path
  end
end
