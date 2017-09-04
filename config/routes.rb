Rails.application.routes.draw do
	# Root page
	root 'chat#index'
	# Chat
	get '/chat', to: 'chat#index'
	get '/chat/teach'
	get '/chat/create'
	# Dictionary
	get '/dictionary/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
