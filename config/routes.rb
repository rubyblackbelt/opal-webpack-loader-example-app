Rails.application.routes.draw do
  root 'website#index'
  mount Hyperloop::Engine => '/hyperloop'
  get '/(*other)', to: 'hyperloop#app'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
