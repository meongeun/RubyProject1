Rails.application.routes.draw do

  post 'user/profile'
  get 'user/profile'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
   
  get 'comment/create'
  get 'comment/new'
  get 'comment/delete'
  get 'post/create'
  get 'post/new'
  get 'post/modify'
  get 'post/update'
  get 'post/delete'

  root 'post#list'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
