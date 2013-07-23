require 'nokogiri'
require 'open-uri'

class RegularPrice < ActiveRecord::Base
  attr_accessible :us_national_average, :east_coast, :new_england, :central_atlantic, :lower_atlantic, :midwest, :gulf_coast, :rocky_mountains, :west_coast, :west_coast_less_california, :california, :colorado, :florida, :massachusetts, :minnesota, :new_york, :ohio, :texas, :washington, :boston, :chicago, :cleveland, :denver, :houston, :los_angeles, :miami, :new_york_city, :san_francisco, :seattle

  def self.refresh 
  	doc = Nokogiri::XML(open('http://www.eia.gov/petroleum/gasdiesel/includes/gas_diesel_rss.xml'), 'rb')
  	date = ''
  	doc.xpath('//rss/channel/item/title').each do |x|
  	  date = Date.strptime(x.content.scan(/([0-9\/]+)/).first.first, '%m/%d/%y')
  	end

  	prices = ''
  	doc.xpath('//rss/channel/item/description').each do |x|
      prices = x.content
  	end

  	if self.count == 0 || date > self.last.effective_date 
  	  RegularPrice.delete_all

  	  d = self.new
  	  d.us_national_average = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+U\.S\./).first.first
  	  d.east_coast = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+East\s+Coast/).first.first
  	  d.new_england = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+New\s+England/).first.first
  	  d.central_atlantic = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Central\s+Atlantic/).first.first
  	  d.lower_atlantic = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Lower\s+Atlantic/).first.first
  	  d.midwest = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Midwest/).first.first
  	  d.gulf_coast = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Gulf\s+Coast/).first.first
  	  d.rocky_mountains = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Rocky\s+Mountain/).first.first
  	  d.west_coast = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+West\s+Coast/).first.first
  	  d.west_coast_less_california = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+West\s+Coast\s+less\s+California/).first.first
  	  d.california = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+California/).first.first
      d.colorado = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Colorado/).first.first
      d.florida = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Florida/).first.first
      d.massachusetts = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Massachusetts/).first.first
      d.minnesota = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Massachusetts/).first.first
      d.new_york = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+New\s+York/).first.first
      d.ohio = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Ohio/).first.first
      d.texas = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Texas/).first.first
      d.washington = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Washington/).first.first
      d.boston = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Boston/).first.first
      d.chicago = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Chicago/).first.first
      d.cleveland = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Cleveland/).first.first
      d.denver = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Denver/).first.first
      d.houston = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Houston/).first.first
      d.los_angeles = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Los\s+Angeles/).first.first
      d.miami = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Miami/).first.first
      d.new_york_city = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+New\s+York\s+City/).first.first
      d.san_francisco = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+San\s+Francisco/).first.first
      d.seattle = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Seattle/).first.first

	    d.effective_date = date

  	  d.save!
  	end
  end
end
