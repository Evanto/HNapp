Rails.application.routes.draw do
  resources :comments
  devise_for :users
  
   # next bit of code is for gem act_as_votable, more info in this tutorial: http://www.mattmorgante.com/technology/votable
  resources :links do
     member do
       put "like", to:    "links#upvote"
       put "dislike", to: "links#downvote"
   end
   resources :comments
 end

  root to: "links#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
end
