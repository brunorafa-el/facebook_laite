Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :posts do
    resources :comments
  end
  match 'like/:post_id', to: 'likes#like', via: :post, as: :like
  match 'dislike/:post_id', to: 'likes#dislike', via: :delete, as: :dislike
  root 'posts#index'
end
