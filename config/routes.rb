Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
