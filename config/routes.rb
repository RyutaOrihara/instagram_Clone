Rails.application.routes.draw do
  resources :blogs do
    collection do
      post :confirm
    end
  end
  # resources :users,only:[:new,:create,:show,:edit]
  resources :sessions,only:[:new,:create,:destroy]
  resources :favorites, only: [:create, :destroy]
  resources :contacts
  resources :users do
    resources :favorites, only: [:index]
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
