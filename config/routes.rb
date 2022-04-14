Rails.application.routes.draw do
  get "/books", to: "books#index"
  get "/books/new", to: "books#new", as: "new_books"
  post "/books", to: "books#create"
  get "/books/:id" , to: "books#show", as: "book"
  delete "/books/:id", to: "books#destroy"
  get "/books/:id/edit", to: "books#edit", as: "edit_book"
  patch "/books/:id", to: "books#update"
  root "books#index"
end
