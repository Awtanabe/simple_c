class CreateGoldPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :gold_places do |t|
      t.string :name
      t.string :prefecture

      t.timestamps
    end
  end
end
