class Donation < ActiveRecord::Base
  attr_accessible :amount, :cause_id, :race_id, :user_id

  belongs_to  :cause
  belongs_to 	:race
  belongs_to 	:user

  validates_presence_of :amount, :cause_id, :race_id, :user_id
end
