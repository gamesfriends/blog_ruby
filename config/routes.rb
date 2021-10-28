Rails.application.routes.draw do
  get 'articles/index'
  get "/articles", to: "articles#index"

  get 'welcome/index'

  resources :articles
  
  resources :articles do
    resources :comments
  end
  
  root 'welcome#index'
end
