class CreateRegularprices < ActiveRecord::Migration
	def change
    	create_table :regular_prices do |t|
    		t.float :us_national_average
    		t.float :east_coast
    		t.float :new_england
    		t.float :central_atlantic
    		t.float :lower_atlantic
    		t.float :midwest
    		t.float :gulf_coast
    		t.float :rocky_mountains
    		t.float :west_coast
    		t.float :california
            t.date  :effective_date

      		t.timestamps
    	end
  	end
end
