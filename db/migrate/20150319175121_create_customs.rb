class CreateCustoms < ActiveRecord::Migration
  def change
    create_table :customs do |t|
    	t.string :name
			t.string :email
			t.string :phone
			t.string :size
			t.string :quilting
			t.string :pantograph_patterns
			t.float :total

			t.timestamps
    end
  end
end
