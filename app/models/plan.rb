class Plan < ApplicationRecord
  belongs_to :gold_place
  has_many :plan_schedule
  has_many :schedules, through: :plan_schedule
end
