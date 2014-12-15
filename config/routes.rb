Rails.application.routes.draw do
  get 'notes/index'
  get 'about'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'notes#index'
  resources :notes

  get 'notes/add_like/:id' => 'notes#add_like', :as => :add_like

end
