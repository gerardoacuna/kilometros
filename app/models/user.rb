class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation

  has_many :donations

  validates_presence_of  :email, :first_name, :last_name
  validates_uniqueness_of :email

  def user_email
  	email.try(:email)
  end

  def find_or_create_user=(email)
  	self.email = User.find_or_create_by_email(email) if email.present?
  end
end
