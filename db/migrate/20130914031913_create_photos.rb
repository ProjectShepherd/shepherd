class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :missing_person, index: true
      t.integer :photo_type

      t.timestamps
    end
  end
end
