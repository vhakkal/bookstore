class BooksController < ApplicationController
	before_action :set_book, only:[ :show, :edit, :update, :destroy]

	def index
		@avilable_at = Time.now
		@books = Book.all
	end

	def show
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to @book
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @book.update(book_params)
			redirect_to @book
		else
			render :new
		end
	end

	def destroy
	 	@book.destroy
	 	redirect_to books_url
	end

	private

	def book_params
		params.require(:book).permit(:title, :author, :pages, :price)
	end

	def set_book
		@book = Book.find(params[:id])
	end
end