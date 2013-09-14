class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :missing_person, index: true
      t.text :mobile
      t.text :web
      t.text :thumb
      t.timestamps
    end
  end
end
