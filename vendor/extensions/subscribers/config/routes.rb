Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :subscribers do
    resources :subscribers, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :subscribers, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :subscribers, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
