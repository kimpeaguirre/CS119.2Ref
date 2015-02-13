Rails.application.routes.draw do
  get "/dashboard", :to => "pages#dashboard", :as => :dashboard 
  #string dictating name of controller (contrller file minus congtroller) and method name of that controller
  #as's value is user-defined
  #if i get the url dashboard i will go to the controller pages whose method is dashboard and i'll name it as dashboard
end



