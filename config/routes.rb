Rails.application.routes.draw do
  root 'top#index'
  get 'admin' => 'admin/reports#index'

  resources :countries, only: [:index, :show]
  resources :abroad_universities, only: :show
  resources :reports, only: :show

  namespace :admin do
    resources :reports
  end
end
