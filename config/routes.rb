Rails.application.routes.draw do
  devise_for :listers
  root to: 'pages#home'
end
