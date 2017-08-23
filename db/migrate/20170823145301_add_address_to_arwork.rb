class AddAddressToArwork < ActiveRecord::Migration[5.0]
  def change
    add_column :artworks, :address, :string
  end
end
