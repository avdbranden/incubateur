Rails.application.routes.draw do
  root to: 'pages#home'
  get 'prix', to: 'pages#prix'
  get 'prix2017', to: 'pages#prix2017'
  get 'contact', to: 'pages#contact'
  get 'equipe', to: 'pages#equipe'
  get 'avocatconnecte', to: 'pages#avocatconnecte'
  get 'radio', to: 'pages#radio'
  get 'digest', to: 'pages#digest'
  get 'cookies', to: 'pages#cookies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
