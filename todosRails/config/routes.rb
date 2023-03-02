Rails.application.routes.draw do
  resources :tasks
  resources :topicos
  #resources substitui essas rotas abaixo - o mapeamento delas
  # root to: redirect("/tasks")
  # get "/topicos", to: "topicos#index"
  # post "/topicos", to: "topicos#create"
  # get "/topicos/new", to: "topicos#new", as: :new_topico
  # get "/topicos/:id/edit", to: "topicos#edit", as: :edit_topico
  # get "/topicos/:id", to: "topicos#show", as: :topico
  # patch "topicos/:id", to: "topicos#update"
  # put "topicos/:id", to: "topicos#update"
  # delete "topicos/:id", to: "topicos#destroy"

end
