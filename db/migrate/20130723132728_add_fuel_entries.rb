class AddFuelEntries < ActiveRecord::Migration
  def change
  	add_column :regular_prices, :colorado, :string
  	add_column :regular_prices, :florida, :string
  	add_column :regular_prices, :massachusetts, :string
  	add_column :regular_prices, :minnesota, :string
  	add_column :regular_prices, :new_york, :string
  	add_column :regular_prices, :ohio, :string
  	add_column :regular_prices, :texas, :string
  	add_column :regular_prices, :washington, :string
  	add_column :regular_prices, :boston, :string
  	add_column :regular_prices, :chicago, :string
  	add_column :regular_prices, :cleveland, :string
  	add_column :regular_prices, :denver, :string
  	add_column :regular_prices, :houston, :string
  	add_column :regular_prices, :los_angeles, :string
  	add_column :regular_prices, :miami, :string
  	add_column :regular_prices, :new_york_city, :string
  	add_column :regular_prices, :san_francisco, :string
  	add_column :regular_prices, :seattle, :string
  end
end
