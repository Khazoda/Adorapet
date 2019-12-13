class GameController < ApplicationController
  layout "game_index"
  def game_index
    
    # Selects all pets from database where the user is not the current user
    retpets = Pet.where.not(user_id: current_user.id)
    # Selects two pets at random to display in view from those retrieved pets
    twopets = retpets.sample(2)
    # Assigns the random two pets to left and right variables
    $leftpet = twopets[0]
    $rightpet = twopets[1]
  end
  def pick_left
    # increments likes by 1 and saves database entry of new like count for the pet on the left and refreshes page
    $leftpet.increment!(:likes, 1)
    $leftpet.save
    
    redirect_to game_path
  end
  def pick_right
        # increments likes by 1 and saves database entry of new like count for the pet on the right and refreshes page

    $rightpet.increment!(:likes, 1)
    $rightpet.save
    redirect_to game_path
  end
end
