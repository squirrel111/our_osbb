class CreateVotings < ActiveRecord::Migration[5.0]
  def change
    create_table :votings do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
