require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users

  if Rails.env.production?
    authenticate :user, ->(u) { u.can_access_sidekiq_admin_ui? } do
      mount Sidekiq::Web => '/admin/sidekiq'
    end

    authenticate :user, ->(u) { u.can_access_event_store_admin_ui? } do
      mount RailsEventStore::Browser => '/admin/events'
    end
  else
    mount Sidekiq::Web => '/admin/sidekiq'
    mount RailsEventStore::Browser => '/admin/events'

    # UI components
    get '/dev/ui', to: 'home#ui'
  end

  root to: 'home#index'

  get 'api/v1/ping', to: 'home#ping'
  post 'api/v1/ping', to: 'home#ping'
end
