class Prefecture < ApplicationRecord
  has_many :hometown
  has_many :residence
end
