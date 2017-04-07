Rails.application.routes.draw do
  resources :topics
  root 'topics#index'
  resources :topics do
    member do
      post 'upvote'
      post 'downvote'
    end
  end
end # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlend
