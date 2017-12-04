Rails.application.routes.draw do
  get "/admin" , to: 'admin#login'

  post "/admin", to: 'admin#signin'

  delete "/logout" , to: 'admin#logout'

  get "/index" , to: 'admin#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
