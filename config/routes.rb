Rails.application.routes.draw do

  get 'homes/top'
  get 'homes/about'
  root to: "homes#top"

  namespace :public do
    resources :shop_images do
      resource :favorite
      resources :shop_comments
    end
  end

  namespace :public do
    resources :customers
  end
  namespace :admin do
    resources :genres
  end

  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

end
