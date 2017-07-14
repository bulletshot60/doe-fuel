require 'nokogiri'
require 'open-uri'

class DieselPrice < ActiveRecord::Base
  attr_accessible :us_national_average, :east_coast, :new_england, :central_atlantic, :lower_atlantic, :midwest, :gulf_coast, :rocky_mountains, :west_coast, :california, :west_coast_less_california

  def self.refresh 
  	doc = Nokogiri::XML(open('https://www.eia.gov/petroleum/gasdiesel/includes/gas_diesel_rss.xml'), 'rb')
  	date = ''
  	doc.xpath('//rss/channel/item/title').each do |x|
  	  date = Date.strptime(x.content.scan(/([0-9\/]+)/).first.first, '%m/%d/%y')
  	end

  	prices = ''
  	doc.xpath('//rss/channel/item/description').each do |x|
      prices = x.content
  	end

  	if self.count == 0 || date > self.order("effective_date").last.effective_date
  	  self.order("effective_date").first.delete

  	  d = self.new
  	  d.us_national_average = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+U\.S\./).last.first
  	  d.east_coast = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+East\s+Coast/).last.first
  	  d.new_england = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+New\s+England/).last.first
  	  d.central_atlantic = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Central\s+Atlantic/).last.first
  	  d.lower_atlantic = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Lower\s+Atlantic/).last.first
  	  d.midwest = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Midwest/).last.first
  	  d.gulf_coast = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Gulf\s+Coast/).last.first
  	  d.rocky_mountains = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+Rocky\s+Mountain/).last.first
  	  d.west_coast = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+West\s+Coast/).last.first
      d.west_coast_less_california = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+West\s+Coast\s+less\s+California/).last.first
  	  d.california = prices.scan(/([0-9]+\.[0-9]+)\s+\.+\s+California/).last.first
  	  d.effective_date = date

  	  d.save!

      return true
  	end

    return false
  end
end
