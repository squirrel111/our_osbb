class CreateNotAgrees < ActiveRecord::Migration[5.0]
  def change
    create_table :not_agrees do |t|
      t.integer :room
      t.references :voting, foreign_key: true
      
      t.timestamps
    end
  end
end
