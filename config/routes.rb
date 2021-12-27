Rails.application.routes.draw do

  devise_for :users
  root to:"diaries#index"
  post '/diaries/result', to: 'diaries#result'
  
  resources :calendars, only:[:index, :show] do 
    resources :diaries, only:[:index, :new, :create, :show]
  end
end
