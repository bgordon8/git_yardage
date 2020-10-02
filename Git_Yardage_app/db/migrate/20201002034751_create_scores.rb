class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :strokes
      t.integer :chips
      t.integer :putts
      t.references :user, null: false, foreign_key: true
      t.references :hole, null: false, foreign_key: true

      t.timestamps
    end
  end
end
