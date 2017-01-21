Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :messages


  root "pages#show", page: "home"
  get "/pages/:page" => "pages#show"

end
