Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'website#index'

  mount Hyperloop::Engine => '/hyperloop'

  get '/(*other)', to: 'hyperloop#app', as: :app
end
