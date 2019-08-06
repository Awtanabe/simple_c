class CreatePlanSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_schedules do |t|
      t.references :plan
      t.references :schedule
      t.timestamps
    end
  end
end
