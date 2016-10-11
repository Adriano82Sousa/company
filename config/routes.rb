Rails.application.routes.draw do
	root to: "home#index"
	
	resources :transacaos
	resources :empresas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
