class Plan < ApplicationRecord
  has_many :plan_schedule
  has_many :schedules, through: :plan_schedule
  has_many :gold_plans
  has_many :gold_places, through: :gold_plans, :source => "gold_place"
end
