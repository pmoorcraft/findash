class User < ActiveRecord::Base
  has_many :businesses, dependent: :destroy
  has_many :cashflows, :through => :businesses
  validates :email,
            presence: true
            
end
