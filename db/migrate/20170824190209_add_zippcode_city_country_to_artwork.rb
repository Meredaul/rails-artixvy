class AddZippcodeCityCountryToArtwork < ActiveRecord::Migration[5.0]
  def change
    add_column :artworks, :zip_code, :string
    add_column :artworks, :city, :string
    add_column :artworks, :country, :string
  end
end
