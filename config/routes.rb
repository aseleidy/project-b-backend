Rails.application.routes.draw do
  resources :courses
  resources :course_users
  resources :students
    post '/auth', to: 'auth#create'
    get '/current_user', to: 'auth#show'
    get '/topics', to: 'topics#index', as: 'topics'
              
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
