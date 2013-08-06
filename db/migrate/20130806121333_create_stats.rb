class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
    	t.integer :count
    	t.string  :controller
    	t.string  :action
    	t.string  :message
      	t.timestamps
    end
  end
end
