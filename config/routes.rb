Rails.application.routes.draw do
  resources :project_skills
  resources :project_images
  resources :skills
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
