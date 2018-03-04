class Hometown < ApplicationRecord
  belongs_to :user_profile
  belongs_to :prefecture
end
