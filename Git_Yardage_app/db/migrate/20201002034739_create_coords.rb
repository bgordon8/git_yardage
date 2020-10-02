class CreateCoords < ActiveRecord::Migration[6.0]
  def change
    create_table :coords do |t|
      t.float :lat
      t.float :long
      t.string :coord_location
      t.references :hole, null: false, foreign_key: true

      t.timestamps
    end
  end
end
