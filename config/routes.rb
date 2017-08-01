Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: :registrations }
  resource :pledge, only: [ :destroy ]
  root to: 'makers#show'
end
