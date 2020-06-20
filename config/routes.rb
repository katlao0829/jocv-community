Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root "messages#index" #ログイン後別ページに飛びたい場合ここを変えれば良さげ！
  resources :users, only: [:edit, :update]
end
