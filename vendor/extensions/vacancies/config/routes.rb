Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :vacancies do
    resources :vacancies, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :vacancies, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :vacancies, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
