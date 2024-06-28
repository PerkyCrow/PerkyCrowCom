Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks'
  }
  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'
  get '/406', to: 'errors#unacceptable'

  get '/legal-notice',   to: 'pages#legal_notice', as: 'legal_notice'
  get '/the-mistbrewer', to: 'pages#mistbrewer', as: 'mistbrewer'

  get 'sitemap', to: 'pages#sitemap', format: :xml, as: 'sitemap'

  root "pages#home"
end
