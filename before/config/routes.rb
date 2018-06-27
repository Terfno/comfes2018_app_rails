Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
=======
  
  #get
  get "comfes/comfes"
  get "confes", to:"comfes#comfes"
  get "comfes/print"

  #post
  post "comfes/comfes"
  post "comfes", to:"comfes#comfes"
  post "comfes/print"
>>>>>>> 5c595ce3a92b365cee5281c049acd17c4af46aa5
end
