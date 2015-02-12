Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :saloons do
    resources :saloons, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :saloons, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :saloons, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
