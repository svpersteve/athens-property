class CreateRentalListing < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_listings do |t|
      t.references :lister, null: false, index: true, foreign_key: true
      t.integer :price, null: false
      t.integer :bedrooms, null: false
      t.integer :bathrooms, null: false
      t.integer :size_in_metre_square, null: false
      t.text :description_gr, null: false
      t.text :description_en, null: false
      t.integer :telephone, null: false
      t.integer :zip_code, null: false
      t.timestamps null: false
    end
  end
end
