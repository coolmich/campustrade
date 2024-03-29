Campustrade::Application.routes.draw do
  #devise_for :users
  devise_for :users, controllers: { sessions: "admins/sessions", registrations: "admins/registrations"}
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#campus'

  resources :schools do
    resources :books

    resources :bookprices
  end

  match '/index', to: 'home#index', via: 'get'
  match '/about', to: 'home#about', via: 'get'
  match '/campus', to: 'home#campus', via: 'get'
  match '/tos', to: 'home#tos', via: 'get'
  match '/wechat', to: 'home#wechat', via: 'get'
  match '/video', to: 'home#video', via: 'get'
  match '/carsecrete', to: 'home#car', via: 'get'
  match '/rent', to: 'home#rent', via: 'get'
  
  get '/data' => 'data#index'
  get '/data/user' => 'data#user'
  get '/data/word' => 'data#word'
  get '/rent', to: 'home#rent'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
