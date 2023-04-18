Rails.application.routes.draw do
  devise_for :admins, :skip => [:registrations], controllers: { sessions: 'admins/sessions' }

  root "pages#home"

  get 'portal', to: 'portal#index'
  get 'portal/items'
  get 'portal/categories'
  get 'portal/items/:id', to: 'portal#show_item', as: 'portal_item'
  get "/pages/:page" => "pages#show"


  get 'work', to: 'items#index', as: 'work'

  resources :items, :categories
end
