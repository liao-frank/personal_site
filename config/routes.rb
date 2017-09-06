Rails.application.routes.draw do
	if Rails.env.development?
		resources :project_skills
		resources :project_images
		resources :skills
		resources :projects
		get 'about' => 'home#about', as: :about
		get 'browse' => 'projects#browse', as: :browse
	else
		# get 'about' => 'home#about', as: :about
		get 'projects/:id' => 'projects#show', as: :project
		get 'projects' => 'projects#browse', as: :browse
	end
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
	

	root :to => 'home#home'
end
