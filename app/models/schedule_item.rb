class ScheduleItem < ActiveRecord::Base
  belongs_to :schedule
  belongs_to :product
end
