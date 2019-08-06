class Schedule < ApplicationRecord
  has_many :plan_schedule
  has_many :plans, through: :plan_schedule
end
