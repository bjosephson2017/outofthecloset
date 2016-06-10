Rails.application.routes.draw do
  #get "/", :controller => "clothings", :action => "new"
  root "clothings#index"
  # Routes for the Weather_forecast resource:
  # CREATE
  get "/weather_forecasts/new", :controller => "weather_forecasts", :action => "new"
  post "/create_weather_forecast", :controller => "weather_forecasts", :action => "create"

  # READ
  get "/weather_forecasts", :controller => "weather_forecasts", :action => "index"
  get "/weather_forecasts/:id", :controller => "weather_forecasts", :action => "show"

  # UPDATE
  get "/weather_forecasts/:id/edit", :controller => "weather_forecasts", :action => "edit"
  post "/update_weather_forecast/:id", :controller => "weather_forecasts", :action => "update"

  # DELETE
  get "/delete_weather_forecast/:id", :controller => "weather_forecasts", :action => "destroy"
  #------------------------------

  # Routes for the Clothing resource:
  # CREATE
  get "/clothings/new", :controller => "clothings", :action => "new"
  post "/create_clothing", :controller => "clothings", :action => "create"

  # READ
  get "/clothings", :controller => "clothings", :action => "index"
  get "/clothings/:id", :controller => "clothings", :action => "show"

  # UPDATE
  get "/clothings/:id/edit", :controller => "clothings", :action => "edit"
  post "/update_clothing/:id", :controller => "clothings", :action => "update"

  # DELETE
  get "/delete_clothing/:id", :controller => "clothings", :action => "destroy"
  #------------------------------
  
  get("/street_to_weather/new", { :controller => "meteorologist", :action => "street_to_weather_form" })
  get("/street_to_weather", { :controller => "meteorologist", :action => "street_to_weather" })

  devise_for :users
  #root 'outfits#index'
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
