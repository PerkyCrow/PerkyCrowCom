Rails.application.routes.draw do
  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'
  get '/406', to: 'errors#unacceptable'
  get '/legal_notice', to: 'pages#legal_notice'

  root "pages#home"
end
