namespace :fuel do
  desc "update diesel and regular fuel prices"
  task :refresh => :environment do
    DieselPrice.refresh
    RegularPrice.refresh
  end

end
