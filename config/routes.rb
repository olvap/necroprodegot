Rails.application.routes.draw do
  root to: 'home#index'

  resources :lists
  resources :characters do
    member do
      get :toggle_live
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
