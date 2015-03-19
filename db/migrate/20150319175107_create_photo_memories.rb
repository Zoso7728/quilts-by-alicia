class CreatePhotoMemories < ActiveRecord::Migration
  def change
    create_table :photo_memories do |t|
    	t.string :name
			t.string :email
			t.string :phone
			t.string :size
			t.float :total

			t.timestamps
    end
  end
end
