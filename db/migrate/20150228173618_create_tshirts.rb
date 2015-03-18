class CreateTshirts < ActiveRecord::Migration
  def change
    create_table :tshirts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :shirts
      t.string :total

      t.timestamps
    end
  end
end
