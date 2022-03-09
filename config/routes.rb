Rails.application.routes.draw do

  namespace :public do
    get 'customer/show'
    get 'customer/edit'
  end
  get 'homes/top'
  get 'homes/about'
  root to: "homes#top"

  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  
  resources :genres
  resources :shop_images


end
