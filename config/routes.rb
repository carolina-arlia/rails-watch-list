Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

# un usuario puede ver todas las listas - GET lists INDEX
# un usuario puede ver nombre y detalle de una lista especifica -GET lists/42 SHOW
# un usuario puede crear una nueva lista - GET lists/new y POST lists NEW Y CREATE

# Un usuario puede agregar un nuevo bookmark (par movie/list) en una lista existente:
# GET "lists/42/bookmarks/new"
# POST "lists/42/bookmarks"

# Un usuario puede borrar un bookmark de una lista - DELETE "bookmarks/25"
