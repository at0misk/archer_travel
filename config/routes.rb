Rails.application.routes.draw do
	root 'sessions#root'
	get 'admin' => 'sessions#admin_login'
	post 'admin' => 'sessions#create_login'
	get 'specials' => 'specials#index'
	get 'specials/new' => 'specials#new'
	post 'specials' => 'specials#create'
	get 'specials/admin' => 'specials#admin'
	post 'specials/destroy/:id' => 'specials#destroy'
	get 'specials/edit/:id' => 'specials#edit'
	patch 'specials/:id' => 'specials#update'
	get 'about' => 'sessions#about'
	get 'contact' => 'sessions#contact'
	post 'contact' => 'sessions#send_mail'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
