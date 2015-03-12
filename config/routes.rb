Rails.application.routes.draw do

  root 'homes#index'
   resources :homes do 
     collection do 
       get :contact_01
       post :contact
       post :contact_us
  end
   end

  get '/about_us' => 'homes#about_us', as: 'about_us'
  get '/services' => 'homes#services', as: 'services'
  get '/cloud_services' => 'homes#cloud_services', as: 'cloud_services'
  get '/application_development' => 'homes#application_development', as: 'application_development'
  get '/products' => 'homes#products', as: 'products'
  get '/contact' => 'homes#contact', as: 'contact'

  get '/cloud_architech' => 'homes#cloud_architech', as: 'cloud_architech'
  get '/cloud_consultancy' => 'homes#cloud_consultancy', as: 'cloud_consultancy'
  get '/cloud_saas' => 'homes#cloud_saas', as: 'cloud_saas'
  get '/cloud_consult' => 'homes#cloud_consult', as: 'cloud_consult'


  get '/product_development' => 'homes#product_development', as: 'product_development'
  get '/saas_development' => 'homes#saas_development', as: 'saas_development'
  get '/product_support' => 'homes#product_support', as: 'product_support'
  get '/web_services_development' => 'homes#web_services_development', as: 'web_services_development'
  get '/web_design_development' => 'homes#web_design_development', as: 'web_design_development'
  get '/wireframe_development' => 'homes#wireframe_development', as: 'wireframe_development'


  get '/chti' => 'homes#chti', as: 'chti'
  get '/security_legal' => 'homes#security_legal', as: 'security_legal'
  get '/privacy_policy' => 'homes#privacy_policy', as: 'privacy_policy'
  get '/terms_conditions' => 'homes#terms_conditions', as: 'terms_conditions'
  get '/shipping' => 'homes#shipping', as: 'shipping'
  

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