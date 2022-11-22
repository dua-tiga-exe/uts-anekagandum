Rails.application.routes.draw do
  resources :mahasiswas
  #get '/cars_csv' => 'cars_csv/index', :defaults {format: "csv"}
  get 'home/index'
  resources :exams
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
