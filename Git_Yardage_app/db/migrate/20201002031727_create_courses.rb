class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :address
      t.integer :rating

      t.timestamps
    end
  end
end
