class CreateLongArms < ActiveRecord::Migration
  def change
    create_table :long_arms do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :size
      t.string :batting
      t.string :binding
      t.string :quilting
      t.string :pantograph_patterns
      t.string :total

      t.timestamps
    end
  end
end
