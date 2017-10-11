Rails.application.routes.draw do
  root 'top#index'
  get 'admin' => 'admin/reports#index'
  namespace :admin do
    resources :reports
  end
end
