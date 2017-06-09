class ScheduleItem < ActiveRecord::Base
  belongs_to :schedule
  has_many :product
end
