class CreateJoinTableArtistsProjects < ActiveRecord::Migration[8.0]
  def change
    create_join_table :artists, :projects do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
    end
  end
end
