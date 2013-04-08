class RaceDetail < ActiveRecord::Base
  attr_accessible :date, :distance

  belongs_to :race

  validates_presence_of :distance
end
