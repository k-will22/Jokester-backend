Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/jokes", to: "jokes#index"
  post "/jokes", to: "jokes#create"
  get "/jokes/:id", to: "jokes#show"
  delete "/jokes/:id", to: "jokes#destroy"
  patch "/jokes/:id", to: "jokes#update"
  get "/jokes/:id/edit", to: "jokes#edit"

  get "/favorites", to: "add_favorites#index"
  post "/favorites", to: "add_favorites#create"
  delete "/favorites/:id", to: "add_favorites#destroy"
  get "/favorites/:id", to: "add_favorites#show"

end
