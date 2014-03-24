Tester::Application.routes.draw do  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'main#projects'
  match '/project',to:'main#create',via:'post'
  match '/project',to:'main#index',as:'projects',via:'get'

  match '/testers/index',to:'testers#index',as: 'tester_index',via:'get'
  match '/initiate',to:'testers#initiate',as: 'initiate',via:'get'
  match '/initiate',to:'testers#create',via:'post'
  match '/project/:project_id/initiate',to:'testers#initiate',as: 'pinitiate',via:'get'
  match '/tester/:id/show',to:'testers#show',as: 'tester_show',via:'get'

  #These routes are for monitoring the project
   match '/project/:id/show',to:'monitor#show',as: 'monitor_show',via:'get'
   match '/project/:id/new',to:'monitor#new',as: 'upls',via:'get'
   match '/project/:id/new',to:'monitor#create',via:'post'

   
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
