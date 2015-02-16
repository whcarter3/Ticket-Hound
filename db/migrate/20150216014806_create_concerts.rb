class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.integer :wishlist_id
      t.string :unique_concert_id

      t.timestamps
    end
  end
end
