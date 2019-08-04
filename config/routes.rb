Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  post 'user/profile' ##내 프로필 수정 폼and 다른 사용자의 정보 보기
  get 'user/profile'
  
  get 'restaurant/delete'
  post 'restaurant/update'
  get 'restaurant/modify'
  post 'restaurant/create'
  get 'restaurant/new'
  get 'restaurant/map'
  get 'restaurant/search'
  get 'restaurant/detail'
  root 'restaurant#list'


  post 'comment/create'
  get 'comment/delete'
  post 'post/create'
  get 'post/new'
  get 'post/modify'
  post 'post/update'
  get 'post/delete'
  get 'post/list'
  get 'post/detail'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
