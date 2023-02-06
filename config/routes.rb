Rails.application.routes.draw do

  get '/legal_notice', to: 'pages#legal_notice'

  root "pages#home"
end
