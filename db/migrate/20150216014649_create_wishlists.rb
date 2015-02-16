class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists, :id => false do |t|
      t.integer :user_id
      t.integer :concert_id

      t.timestamps
    end
  end
end
