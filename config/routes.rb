Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Hyperloop::Engine => '/hyperloop'

  root 'hyperloop#app'
  get '*all', to: 'hyperloop#app'

  # get '/(*other)', to: 'hyperloop#app'
  # get '*all', to: 'hyperloop#main', via: [:get] # this should be the last line of routes.rb
end
