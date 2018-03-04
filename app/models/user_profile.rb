class UserProfile < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  belongs_to :job, foreign_key: "job_id"
  has_one :hometown
  has_one :residence
end
