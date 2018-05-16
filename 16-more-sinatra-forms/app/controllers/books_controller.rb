class BooksController < ApplicationController

  get "/books" do
    @books = Book.all
    erb :index
  end

  post "/books" do
    # create new book
    # author = params[:author]
    # title = params[:title]
    # snippet = params[:snippet]
    book = Book.create(params)
    redirect("/books")
  end

  get "/books/new" do
    # show empty form for book creation
    erb :new
  end
  



end
