class Stroke < ApplicationRecord
  validates :user_id, presence: true
end
