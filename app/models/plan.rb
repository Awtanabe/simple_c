class Plan < ApplicationRecord
  belongs_to :gold_place
  has_many :plan_schedule
  has_many :schedules, through: :plan_schedule
  has_many :gold_plans
  has_many :gold_places, through: :gold_plans
end
