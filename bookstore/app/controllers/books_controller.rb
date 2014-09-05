class BooksController < ApplicationController
	def index
		@avilable_at = Time.now
		@books = Book.all
	end

	def show
		@book = Book.find(params[:id])
	end
end