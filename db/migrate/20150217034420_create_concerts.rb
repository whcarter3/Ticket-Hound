class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :tm_concert_id

      t.timestamps
    end
  end
end
