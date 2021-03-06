Rails.application.routes.draw do
  resources :companies
  resources :students
  devise_for :admins

  resources :job_offers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #DEVISE NECESITA UN ROOT
  root to: "home#index"

  resources :companies do
    resources :job_offers, :except => [:index]
  end

end
