Rails.application.routes.draw do

  resources :emergencies

  root 'emergencies#index'

end
