class AboutController < ApplicationController
	include StatlyHelper

	def index
		stat("about", "index", "page_view")
	end
end
