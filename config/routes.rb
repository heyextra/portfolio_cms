Rails.application.routes.draw do
  devise_for :admins, controllers: { sessions: 'admins/sessions' }
  root "categories#index"
  get "/pages/:page" => "pages#show"

  
  resources :items, :categories
end
