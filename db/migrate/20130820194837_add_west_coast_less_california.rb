class AddWestCoastLessCalifornia < ActiveRecord::Migration
  def change
  	add_column :diesel_prices, :west_coast_less_california, :float
  	add_column :regular_prices, :west_coast_less_california, :float
  end
end
