class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :cover
      t.string :release_date

      t.timestamps
    end
  end
end
