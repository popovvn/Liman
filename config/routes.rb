Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get 'contr#index/:licnum'
  get '/license/get' => 'license#get'
end
