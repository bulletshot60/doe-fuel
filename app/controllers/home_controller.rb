class HomeController < ApplicationController
	def index
		@regular = RegularPrice.order("effective_date").last
		@diesel = DieselPrice.order("effective_date").last
	end
end
