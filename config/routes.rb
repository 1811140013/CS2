Rails.application.routes.draw do
  get 'top/main'
  get 'top/login'
  get 'top/main'
  post'top/login'
  root'top#main'
  delete 'top/:login_uid', to: 'top#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
