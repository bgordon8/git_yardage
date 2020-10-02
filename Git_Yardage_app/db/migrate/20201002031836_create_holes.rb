class CreateHoles < ActiveRecord::Migration[6.0]
  def change
    create_table :holes do |t|
      t.integer :number
      t.integer :yards
      t.integer :par
      t.integer :handicap
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
