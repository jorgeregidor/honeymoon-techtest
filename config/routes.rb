Rails.application.routes.draw do
  namespace :api do
    resources :destinations, only: [:index, :show, :update] do
      resources :ratings, only: [:create]
    end
  end

  root "welcome#index"
end
