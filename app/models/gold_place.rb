class GoldPlace < ApplicationRecord
  has_many :plans
  has_many :gold_plans
  has_many :plans, through: :gold_plans
end
