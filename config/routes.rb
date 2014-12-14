Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#home'
  get '/gallerij', to: "pages#gallery", as: :gallery
  get '/contact', to: "pages#contact", as: :contact

  localized do
    resources :services
    resources :projects
  end
end
