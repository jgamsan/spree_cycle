Spree::Core::Engine.routes.prepend do
  resources :cycle_images, :only => [:index]
  namespace :admin do
    resources :cycle_images do
      member do
        post :move_up
        post :move_down
      end
    end
  end
end