class Business < ActiveRecord::Base
  belongs_to :user
  has_many :cashflows
  validates :name,
            presence: true
end
