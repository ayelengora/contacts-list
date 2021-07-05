Rails.application.routes.draw do
  root 'pages#index'

  get '/api/v1/contacts/:id/contact_history', to: 'api/v1/contacts#contact_history'
  namespace :api do
    namespace :v1 do
      resources :contacts, param: :id
    end
  end
  get '*path', to: 'pages#index', via: :all
end
