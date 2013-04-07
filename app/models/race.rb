class Race < ActiveRecord::Base
  attr_accessible :name, :place, :race_details_attributes

  validates_presence_of :name, :place

  has_many :race_details

  accepts_nested_attributes_for :race_details
end