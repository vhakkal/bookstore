class BooksController < ApplicationController
	def index
		@avilable_at = Time.now
		@books = Book.all
	end
end