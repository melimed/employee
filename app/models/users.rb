class Users < ActiveRecord::Base
  validates :name, presence:true
  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness:true, format: {with:VALID_EMAIL_REGEX}
end
