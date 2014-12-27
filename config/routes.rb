Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users
  root :to => "rails_admin/main#dashboard"
  #root :to => "home#index"

  resources :articles
  resources :pages
  get ':controller(/:action(/:id(.:format)))'

end
