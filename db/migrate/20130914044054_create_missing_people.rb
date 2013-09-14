class CreateMissingPeople < ActiveRecord::Migration
  def change
    create_table :missing_people do |t|
      t.boolean :found
      t.text :status
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :age
      t.integer :height
      t.integer :weight
      t.string :sex
      t.string :hair_color
      t.string :eye_color
      t.string :race
      t.text :description
      t.decimal :initial_location_lat
      t.decimal :initial_location_long
      t.decimal :found_location_lat
      t.decimal :found_location_long
      t.references :submitter, index: true

      t.timestamps
    end
  end
end
