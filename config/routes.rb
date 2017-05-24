Rails.application.routes.draw do
	root 'sessions#root'
	get 'specials' => 'specials#index'
	get 'specials/new' => 'specials#new'
	post 'specials' => 'specials#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
