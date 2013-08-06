require 'json'
require 'date'

class PricesController < ApplicationController
	include StatlyHelper

	def index
		stat("prices", "index", "page_view")

		@regular = get_regular(params["date"])
		@diesel = get_diesel(params["date"])
	end

	def trends
		stat("prices", "trends", "page_view")
	end

	def api
		stat("prices", "api", "page_view")
	end

	def weekly_updates
		stat("prices", "weekly_updates", "page_view")
	end

	def success

	end

	def get
		respond_to do |format|
			format.html { redirect_to :index }
			format.xml { 
				stat("prices", "get", "api_xml")
				begin
					render :xml => { 
						:regular => get_regular(params["date"]), 
						:diesel => get_diesel(params["date"]) 
					}.to_xml 
				rescue 
					render :bad_request
				end
			}
			format.json { 
				stat("prices", "get", "api_json")
				begin
					render :json => { 
						:regular => get_regular(params["date"]), 
						:diesel => get_diesel(params["date"]) 
					}.to_json
				rescue

				end
			}
		end
	end

	def get_regular(date)
		date.nil? ? RegularPrice.order("effective_date").last : RegularPrice.where("effective_date < '#{DateTime.parse(date)}'").order("effective_date").last
	end

	def get_diesel(date)
		date.nil? ? DieselPrice.order("effective_date").last : DieselPrice.where("effective_date < '#{DateTime.parse(date)}'").order("effective_date").last
	end	
end
