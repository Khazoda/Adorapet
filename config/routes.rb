Rails.application.routes.draw do
  get 'game/game_index'
  get 'profilepage/profile'

  devise_for :users
  get 'landing_page/index'
  root 'landing_page#index'
  get 'profilepage' => 'profilepage#profile'
  get 'profilepage/edit'
  post 'profilepage/edit' => 'profilepage#attachprofilepicture'
  get 'profilepage/attachprofilepicture' => 'profilepage'

  post 'pets/create' => 'pets#create'
  post 'profilepage/addpicture'

  get 'contact' => 'landing_page#contact'
  post 'request_contact' => 'landing_page#request_contact'

  get 'game' => 'game#game_index'
  post 'game' => 'game#game_index'
  get 'game/pick_left'
  get 'game/pick_right'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
