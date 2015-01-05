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

		@us_regular = [{
            name: "US National Average",
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.us_national_average.nil? ? 0.0 : x.us_national_average ] }
        }, {
            name: "East Coast",
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.east_coast.nil? ? 0.0 : x.east_coast ] }
        }, {
            name: "New England",
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.new_england.nil? ? 0.0 : x.new_england ] }
        }, {
            name: "Central Atlantic",
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.central_atlantic.nil? ? 0.0 : x.central_atlantic ] }
        }, {
            name: "Lower Atlantic",
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.lower_atlantic.nil? ? 0.0 : x.lower_atlantic ] }
        }, {
            name: "Midwest",
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.midwest.nil? ? 0.0 : x.midwest ] }
        }, {
            name: "Gulf Coast",
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.gulf_coast.nil? ? 0.0 : x.gulf_coast ] }
        }, {
            name: "Rocky Mountains",
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.rocky_mountains.nil? ? 0.0 : x.rocky_mountains ] }
        }, {
            name: "West Coast",
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.west_coast.nil? ? 0.0 : x.west_coast ] }
        }, {
            name: "California",
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.california.nil? ? 0.0 : x.california ] }
        }, {
            name: "West Coast less California",
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.west_coast_less_california.nil? ? 0.0 : x.west_coast_less_california ] }
        }]

        @us_regular_min = 0.00
        @us_regular_max = 0.00
        @us_regular.each { |prices|
            prices.each { |price_array|
                if @us_regular_min == 0.00 || price_array[1] < @us_regular_min
                    @us_regular_min = price_array[1]
                end
                if @us_regular_max == 0.00 || price_array[1] > @us_regular_max
                    @us_regular_max = price_array[1]
                end
            }
        }
        @us_regular_min -= 0.10
        @us_regular_max += 0.10

        @us_regular_city = [{
            name: 'Colorado',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.us_national_average.nil? ? 0.0 : x.us_national_average ] }
        }, {
            name: 'Florida',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.east_coast.nil? ? 0.0 : x.east_coast ] }
        }, {
            name: 'Massachusetts',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.new_england.nil? ? 0.0 : x.new_england ] }
        }, {
            name: 'Minnesota',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.central_atlantic.nil? ? 0.0 : x.central_atlantic ] }
        }, {
            name: 'New York',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.lower_atlantic.nil? ? 0.0 : x.lower_atlantic ] }
        }, {
            name: 'Ohio',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.midwest.nil? ? 0.0 : x.midwest ] }
        }, {
            name: 'Texas',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.gulf_coast.nil? ? 0.0 : x.gulf_coast ] }
        }, {
            name: 'Washington',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.rocky_mountains.nil? ? 0.0 : x.rocky_mountains ] }
        }]

        @us_regular_city_min = 0.00
        @us_regular_city_max = 0.00
        @us_regular_city.each { |prices|
            prices.each { |price_array|
                if @us_regular_city_min == 0.00 || price_array[1] < @us_regular_city_min
                    @us_regular_city_min = price_array[1]
                end
                if @us_regular_city_max == 0.00 || price_array[1] > @us_regular_city_max
                    @us_regular_city_max = price_array[1]
                end
            }
        }
        @us_regular_city_min -= 0.10
        @us_regular_city_max += 0.10

        @us_regular_state = [{
            name: 'Boston',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.boston.nil? ? 0.0 : x.boston ] }
        }, {
            name: 'Chicago',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.chicago.nil? ? 0.0 : x.chicago ] }
        }, {
            name: 'Cleveland',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.cleveland.nil? ? 0.0 : x.cleveland ] }
        }, {
            name: 'Denver',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.denver.nil? ? 0.0 : x.denver ] }
        }, {
            name: 'Houston',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.houston.nil? ? 0.0 : x.houston ] }
        }, {
            name: 'Los Angeles',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.los_angeles.nil? ? 0.0 : x.los_angeles ] }
        }, {
            name: 'Miami',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.miami.nil? ? 0.0 : x.miami ] }
        }, {
            name: 'New York City',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.new_york_city.nil? ? 0.0 : x.new_york_city ] }
        }, {
            name: 'San Francisco',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.san_francisco.nil? ? 0.0 : x.san_francisco ] }
        }, {
            name: 'Seattle',
            data: RegularPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.seattle.nil? ? 0.0 : x.seattle ] }
        }]

        @us_regular_state_min = 0.00
        @us_regular_state_max = 0.00
        @us_regular_state.each { |prices|
            prices.each { |price_array|
                if @us_regular_state_min == 0.00 || price_array[1] < @us_regular_state_min
                    @us_regular_state_min = price_array[1]
                end
                if @us_regular_state_max == 0.00 || price_array[1] > @us_regular_state_max
                    @us_regular_state_max = price_array[1]
                end
            }
        }
        @us_regular_state_min -= 0.10
        @us_regular_state_max += 0.10

        @us_diesel = [{
            name: 'US National Average',
            data: DieselPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.us_national_average.nil? ? 0.0 : x.us_national_average ] }
        }, {
            name: 'East Coast',
            data: DieselPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.east_coast.nil? ? 0.0 : x.east_coast ] }
        }, {
            name: 'New England',
            data: DieselPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.new_england.nil? ? 0.0 : x.new_england ] }
        }, {
            name: 'Central Atlantic',
            data: DieselPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.central_atlantic.nil? ? 0.0 : x.central_atlantic ] }
        }, {
            name: 'Lower Atlantic',
            data: DieselPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.lower_atlantic.nil? ? 0.0 : x.lower_atlantic ] }
        }, {
            name: 'Midwest',
            data: DieselPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.midwest.nil? ? 0.0 : x.midwest ] }
        }, {
            name: 'Gulf Coast',
            data: DieselPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.gulf_coast.nil? ? 0.0 : x.gulf_coast ] }
        }, {
            name: 'Rocky Mountains',
            data: DieselPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.rocky_mountains.nil? ? 0.0 : x.rocky_mountains ] }
        }, {
            name: 'West Coast',
            data: DieselPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.west_coast.nil? ? 0.0 : x.west_coast ] }
        }, {
            name: 'California',
            data: DieselPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.california.nil? ? 0.0 : x.california ] }
        }, {
            name: "West Coast less California",
            data: DieselPrice.find(:all, :order => "effective_date desc", :limit => 12).reverse.collect { |x| [ x.effective_date.to_s, x.west_coast_less_california.nil? ? 0.0 : x.west_coast_less_california ] }
        }]

        @us_diesel_min = 0.00
        @us_diesel_max = 0.00
        @us_diesel.each { |prices|
            prices.each { |price_array|
                if @us_diesel_min == 0.00 || price_array[1] < @us_diesel_min
                    @us_regular_min = price_array[1]
                end
                if @us_diesel_max == 0.00 || price_array[1] > @us_diesel_max
                    @us_diesel_max = price_array[1]
                end
            }
        }
        @us_diesel_min -= 0.10
        @us_diesel_max += 0.10
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
