class Company < ActiveRecord::Base
  has_many :professional
  has_many :customer
  has_many :product
  has_many :schedule
end
