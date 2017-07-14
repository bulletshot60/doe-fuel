namespace :fuel do
  desc "update diesel and regular fuel prices"
  task :refresh => :environment do
  	include ApplicationHelper
    include StatlyHelper

    d1 = DieselPrice.refresh
    puts "Diesel Updated?: #{d1}"
    d2 = RegularPrice.refresh
    puts "Regular Updated?: #{d2}"
    
    Stat.where("created_at < :drop_off", {drop_off: 12.days.ago}).delete_all

    stat("home", "index", "page_view")
    stat("about", "index", "page_view")
    stat("prices", "index", "page_view")
    stat("prices", "trends", "page_view")
    stat("prices", "api", "page_view")
    stat("prices", "weekly_updates", "page_view")

    stat("prices", "get", "api_xml")
    stat("prices", "get", "api_json")
  end

end
