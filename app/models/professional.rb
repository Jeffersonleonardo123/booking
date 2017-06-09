class Professional < ActiveRecord::Base
  belongs_to :company
  has_many :schedule
end
