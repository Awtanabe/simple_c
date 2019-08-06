class GoldPlace < ApplicationRecord
  has_many :gold_plans
  has_many :plans, through: :gold_plans,source: :plan
end
