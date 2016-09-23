class User < ActiveRecord::Base
  has_many :arrival_times
  accepts_nested_attributes_for :arrival_times
  validates :name, presence: true, uniqueness: true
end
