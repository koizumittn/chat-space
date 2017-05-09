Rails.application.routes.draw do
  get '/users/edit' => 'users#edit'
  devise_for :users
  root 'messages#index'
end

