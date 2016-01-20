Spree::Core::Engine.routes.draw do
  match '/signup', to: redirect('/login'), via: [:get, :post]
end
