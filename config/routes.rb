Rails.application.routes.draw do
  #get 'movies/index'
  #get 'movies/show'
  #get 'movies/edit'
  #get 'movies/update'

  root to: 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/help', to: 'static_pages#help', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/around', to: 'static_pages#around', via: 'get'
  devise_for :users

  #resources :scenes
  get 'scenes/'          => 'scenes#index', as: :scenes
  get 'scenes/new'       => 'scenes#new', as: :new_scene
  post 'scenes/'         => 'scenes#create'
  get 'scenes/:id'       => 'scenes#show',  as: :scene
  get 'scenes/:id/edit'  => 'scenes#edit', as: :edit_scene
  patch 'scenes/:id'     => 'scenes#update'
  delete 'scenes/:id'    => 'scenes#destroy'

  get 'movies/'          => 'movies#index', as: :movies
  get 'movies/new'       => 'movies#new', as: :new_movie
  post 'movies/'         => 'movies#create'
  get 'movies/:id'       => 'movies#show',  as: :movie
  get 'movies/:id/edit'  => 'movies#edit', as: :edit_movie
  patch 'movies/:id'     => 'movies#update'
  delete 'movies/:id'    => 'movies#destroy'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
