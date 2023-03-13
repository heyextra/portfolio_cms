Rails.application.routes.draw do
  devise_for :admins, controllers: { sessions: 'admins/sessions' }

  root "categories#index"

  get 'portal', to: 'portal#index'
  get 'portal/items'
  get 'portal/categories'
  get 'portal/items/:id', to: 'portal#show_item', as: 'portal_item'

  get "/pages/:page" => "pages#show"

  resources :items, :categories, :portal
end
