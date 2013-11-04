App::Application.routes.draw do
  resources :tasks
  root :to => 'application#index'

end
