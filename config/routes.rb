Rails.application.routes.draw do
  devise_for :users
	root to: "static_pages#contact"
	get "/test", to: proc {|e| [200,{},["ok"]]}
	resources :users 
  	get "/contact", to: "static_pages#contact"
	get "/about", to: "static_pages#about"
	get "/mision", to: "static_pages#mision"
	get "/carrier", to: "static_pages#carrier"
	resources :orders
end
