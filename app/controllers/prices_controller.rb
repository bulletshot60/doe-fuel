require 'json'
require 'date'

class PricesController < ApplicationController
	def index

	end

	def trends

	end

	def api

	end

	def weekly_updates

	end

	def sign_up

	end

	def success

	end

	def get
		respond_to do |format|
			format.html { redirect_to :index }
			format.xml { 
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
