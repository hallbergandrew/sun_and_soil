OnePageApp::Application.routes.draw do
  root 'emails#index'
  resources :emails
  resources :nonprofits
  resources :charges
end
