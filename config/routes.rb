Rails.application.routes.draw do
  root 'static_items#home'

  get '/about', to: 'static_items#about'

	# root 'items#index'
	resources :items


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
