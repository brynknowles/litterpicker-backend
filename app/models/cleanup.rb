class Cleanup < ApplicationRecord
  has_many :user_cleanups, dependent: :destroy
  has_many :users, through: :user_cleanups

  def get_user_cleanups 
    self.user_cleanups
  end
end
