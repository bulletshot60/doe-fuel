class HomeController < ApplicationController
	include StatlyHelper

	def index
		stat("home", "index", "page_view")

		@regular = RegularPrice.order("effective_date").last
		@diesel = DieselPrice.order("effective_date").last
	end
end
