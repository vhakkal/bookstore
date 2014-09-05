class BooksController < ApplicationController
	def index
		@avilable_at = Time.now
		@books = ["Atlas Shrugged", "Ender's Game", "Hamlet", "The Hobbiet"]
	end
end