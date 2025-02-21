class CreateJoinTableArtistsProjects < ActiveRecord::Migration[8.0]
  def change
    create_join_table :artists, :projects do |t|
      t.index :artist_id
      t.index :project_id
    end
  end
end
