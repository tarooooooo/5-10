class BooksController < ApplicationController

  def new

  end
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
   @books = Book.all
   
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update

  end

  def destroy
  end

   private

   def book_params
     params.require(:book).permit(:title,:opinion)
   end
end
