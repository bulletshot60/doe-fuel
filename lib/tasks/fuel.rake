namespace :fuel do
  desc "update diesel and regular fuel prices"
  task :refresh => :environment do
  	include ApplicationHelper

    d1 = DieselPrice.refresh
    puts "Diesel Updated?: #{d1}"
    d2 = RegularPrice.refresh
    puts "Regular Updated?: #{d2}"
    if d1 && d2
    	send_update(RegularPrice.order("effective_date").last, DieselPrice.order("effective_date").last)
    end
  end

end
