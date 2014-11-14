Rails.application.routes.draw do

  get 'emailapi/subscribe'

  devise_for :users,
    controllers: {
      sessions: 'sessions'
    }

  resources :posts do
    resources :comments
  end

  get 'emailapi/index'
  post 'emailapi/subscribe' => 'emailapi#subscribe'
  
  get '/profile' => 'profiles#profile', :as => :profile

  get '/profile/edit' => 'profiles#edit'

  post 'profile/update' =>'profiles#update'


  get 'likes/create'

  post 'posts/:id/like' => 'likes#create', :as =>:like_post

  get 'cohort/cohort' => 'cohort#directory', :as=> :cohort

  get 'cohort/students/:id' => 'cohort#show', :as=> :students_profile


  get 'category/:category' => 'static#feed', :as => :category 

  get 'static/login' 

  get 'static/feed'

  root 'static#feed'

 
end
