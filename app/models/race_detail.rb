class RaceDetail < ActiveRecord::Base
  attr_accessible :date, :distance

  belongs_to :race
end
