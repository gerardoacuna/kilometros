class Race < ActiveRecord::Base
  attr_accessible :name, :place, :race_details_attributes, :attachment_attributes

  validates_presence_of :name, :place

  has_many :race_details, dependent: :destroy
  has_many :donations
  has_one  :attachment, :as => :attachable, dependent: :destroy

  accepts_nested_attributes_for :race_details
  accepts_nested_attributes_for :attachment
end