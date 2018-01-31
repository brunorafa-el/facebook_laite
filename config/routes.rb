Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  resources :users, only: [:show]
  match 'like/:post_id', to: 'likes#like', via: :post, as: :like
  match 'dislike/:post_id', to: 'likes#dislike', via: :delete, as: :dislike
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
