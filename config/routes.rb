Rails.application.routes.draw do
  
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  devise_for :users, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  root to: "homes#top"
  get "home/about", to: "homes#about", as: "about"
  
  resources :users, only:[:show, :edit]
end
