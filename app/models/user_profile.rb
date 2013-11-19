class UserProfile < ActiveRecord::Base
  belongs_to :user

  validates :telephone_number, presence: true
end
