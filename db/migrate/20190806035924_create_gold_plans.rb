class CreateGoldPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :gold_plans do |t|
      t.references :gold_place
      t.references :plan
      t.timestamps
    end
  end
end
