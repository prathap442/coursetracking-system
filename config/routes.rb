Rails.application.routes.draw do
  resources :cities
  get 'students/check_email_presence'
  resources :courses
  resources :instructors
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
