class UserCleanup < ApplicationRecord
  belongs_to :user
  belongs_to :cleanup
end
