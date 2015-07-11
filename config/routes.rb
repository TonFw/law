Rails.application.routes.draw do
  # DeviseUser sessions
  devise_for :users,
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }

  devise_scope :user do
    root to: 'users/sessions#new'
  end
end