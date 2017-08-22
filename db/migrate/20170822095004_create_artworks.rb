class CreateArtworks < ActiveRecord::Migration[5.0]
  def change
    create_table :artworks do |t|
      t.float :price
      t.string :category
      t.string :title
      t.string :size
      t.date :date
      t.boolean :sold, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
