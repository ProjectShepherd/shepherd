class CreateMissingPeople < ActiveRecord::Migration
  def change
    create_table :missing_people do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.decimal :location_long
      t.decimal :location_lat
      t.text :description
      t.text :status
      t.boolean :found
      t.text :notes
      t.references :submitter, index: true

      t.timestamps
    end
  end
end
