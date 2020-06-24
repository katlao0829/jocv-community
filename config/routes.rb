Rails.application.routes.draw do
  devise_for :users
  root "groups#index" #ログイン後別ページに飛びたい場合ここを変えれば良さげ！
  resources :users, only: [:edit, :update, :show]
  resources :groups do
    resources :messages, only: [:index, :create]
    member do
      get :join
    end
  end

end
