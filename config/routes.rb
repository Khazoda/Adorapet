Rails.application.routes.draw do
  get 'landing_page/index'
  root 'landing_page#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
