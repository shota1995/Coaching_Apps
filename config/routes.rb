Rails.application.routes.draw do
  get 'students/new'
  get 'coaches/show'
  get "coaches/index" => "coaches#index"
  root 'statics#top'
  devise_for :coaches, :controllers => {
  :registrations => 'coaches/registrations',
  :sessions => 'coaches/sessions'   
} 
  resources :coaches, only: [:show]

  devise_scope :coach do
    #get "user/:id", :to => "coaches/registrations#detail"
    get "signup", :to => "coaches/registrations#new"
    get "login", :to => "coaches/sessions#new"
    get "logout", :to => "coaches/sessions#destroy"
  end
end
