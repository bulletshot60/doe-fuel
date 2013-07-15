require 'json'

class PricesController < ApplicationController
	def index

	end

	def get
		respond_to do |format|
			format.html { redirect_to :index }
			format.xml { render :xml => { :regular => RegularPrice.last, :diesel => DieselPrice.last }.to_xml }
			format.json { render :xml => { :regular => RegularPrice.last, :diesel => DieselPrice.last }.to_json }
		end
	end
end
