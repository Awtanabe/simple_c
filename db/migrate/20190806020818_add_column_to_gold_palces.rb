class AddColumnToGoldPalces < ActiveRecord::Migration[5.2]
  def change
    add_reference :plans, :gold_place
  end
end
