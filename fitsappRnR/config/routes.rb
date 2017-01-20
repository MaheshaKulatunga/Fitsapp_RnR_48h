Rails.application.routes.draw do
  devise_for :users
  resources :messages


  root "pages#show", page: "home"
  get "/pages/:page" => "pages#show"

end
