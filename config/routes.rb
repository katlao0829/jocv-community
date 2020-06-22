Rails.application.routes.draw do
  devise_for :users
  root "groups#index" #ログイン後別ページに飛びたい場合ここを変えれば良さげ！
  get 'messages/index'
  resources :users, only: [:edit, :update]
  resources :groups do
    member do
      get :join
    end
  end

end
