class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :cover
      t.date :date
      t.text :tracklist

      t.timestamps
    end
  end
end
