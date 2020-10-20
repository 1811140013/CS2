Rails.application.routes.draw do
  get 'user/index'
  get 'user/new'
  get 'top/logout'
  get 'top/main'
  get 'user/new', to: 'user#new'
  get 'user/index', to: 'user#index'
  post'top/login'
  root'top#main'
  #post 'user/index'
  post 'user', to: 'user#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
