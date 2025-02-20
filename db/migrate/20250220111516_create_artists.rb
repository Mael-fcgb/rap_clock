class CreateArtists < ActiveRecord::Migration[8.0]
  def change
    create_table :artists do |t|
      t.string :pseudonym
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
