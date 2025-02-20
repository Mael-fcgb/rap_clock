class CreateProjectArtist < ActiveRecord::Migration[8.0]
  def change
    create_table :project_artists do |t|
      t.references :project, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
