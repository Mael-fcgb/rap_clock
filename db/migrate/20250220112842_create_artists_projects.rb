class CreateArtistsProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :artists_projects do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
