Rails.application.routes.draw do
  root :to => 'homes#top'
  
  get 'lists/new'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/edit'
 
 
  
  
end
