class AddArtistToProjects < ActiveRecord::Migration[8.0]
  def change
    add_reference :projects, :artist, null: false, foreign_key: true
  end
end
