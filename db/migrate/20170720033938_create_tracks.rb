class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :distance
      t.integer :time
      t.references :client, foreign_key: true
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
