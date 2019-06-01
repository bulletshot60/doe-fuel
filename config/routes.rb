DoeFuel::Application.routes.draw do

  root :to => 'home#index'

  get ':controller(/:action(/:id))(.:format)'
end
