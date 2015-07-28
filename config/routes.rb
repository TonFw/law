Rails.application.routes.draw do
  # Chamber & Senate CRUDs
  resources :propositions

  # DeviseUser sessions
  devise_for :users,
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }

  # Root to HomePage
  root to: 'home#index'
end