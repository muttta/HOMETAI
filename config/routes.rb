Rails.application.routes.draw do

  root to:"diaries#index"
  post '/diaries/result', to: 'diaries#result'
  resources :diaries, only:[:index, :new, :create, :save]
end
