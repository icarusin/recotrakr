Recotrakr::Application.routes.draw do
  
  ActiveAdmin.routes(self)
  
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions'
                                   }

  devise_scope :user do
    get     'signup',   to: 'devise/registrations#new'
    get     'login',    to: 'users/sessions#new'
    get 'sign_out', to: 'users/sessions#destroy'
  end
	
  root to: 'pages#home'

  match '/about', to: 'pages#about', via: "get"
  match '/home', to: 'pages#home', via: "get"

end
