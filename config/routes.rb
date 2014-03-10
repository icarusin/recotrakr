Recotrakr::Application.routes.draw do
  
  ActiveAdmin.routes(self)
  
  devise_for :users

  devise_scope :user do
    get     'signup',   to: 'devise/registrations#new'
    get     'login',    to: 'users/sessions#new'
  end
	
  root to: 'pages#home'

  match '/about', to: 'pages#about', via: "get"
  match '/home', to: 'pages#home', via: "get"

end
