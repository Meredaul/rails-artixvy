class AddImageToArtwork < ActiveRecord::Migration[5.0]
  def change
    add_column :artworks, :image_url, :string
  end
end
