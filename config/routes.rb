Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'certifications#login'
  get '/top', to: 'boards#top'
  get '/create', to: 'boards#create'
end
