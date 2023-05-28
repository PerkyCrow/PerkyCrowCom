Rails.application.routes.draw do
  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'
  get '/406', to: 'errors#unacceptable'

  get '/legal-notice',   to: 'pages#legal_notice', as: 'legal_notice'
  get '/the-mistbrewer', to: 'pages#mistbrewer', as: 'mistbrewer'

  get 'sitemap', to: 'pages#sitemap', format: :xml, as: 'sitemap'

  root "pages#home"
end
