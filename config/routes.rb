Rails.application.routes.draw do
  resources :dogs, except: [:create]
  resources :employees
  post '/dogs', to: 'dogs#sort_index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
