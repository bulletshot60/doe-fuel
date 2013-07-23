class AddFuelEntries < ActiveRecord::Migration
  def change
  	add_column :regular_prices, :colorado, :float
  	add_column :regular_prices, :florida, :float
  	add_column :regular_prices, :massachusetts, :float
  	add_column :regular_prices, :minnesota, :float
  	add_column :regular_prices, :new_york, :float
  	add_column :regular_prices, :ohio, :float
  	add_column :regular_prices, :texas, :float
  	add_column :regular_prices, :washington, :float
  	add_column :regular_prices, :boston, :float
  	add_column :regular_prices, :chicago, :float
  	add_column :regular_prices, :cleveland, :float
  	add_column :regular_prices, :denver, :float
  	add_column :regular_prices, :houston, :float
  	add_column :regular_prices, :los_angeles, :float
  	add_column :regular_prices, :miami, :float
  	add_column :regular_prices, :new_york_city, :float
  	add_column :regular_prices, :san_francisco, :float
  	add_column :regular_prices, :seattle, :float
  end
end
