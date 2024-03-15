Rails.application.routes.draw do
  get 'web/bootstrap'
  post '/login', to: 'sessions#create'
  resources :blogs do
    post 'like'
    delete 'unlike'
  end
  resources :users, only: [:create]
  scope '/web' do
    get 'bootstrap', to: 'web#bootstrap'
  end
end
