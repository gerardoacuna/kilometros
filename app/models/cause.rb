class Cause < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :attachment_attributes

  has_many :donations
  has_one  :attachment, :as => :attachable, dependent: :destroy

  validates_presence_of :description, :end_date, :name

  accepts_nested_attributes_for :attachment
end
