Rails.application.routes.draw do
  root to: "blogs#index"

  devise_for :users ,controllers:
  {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'

  }
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
