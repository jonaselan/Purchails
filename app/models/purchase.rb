class Purchase < ApplicationRecord
  belongs_to :user_id
  belongs_to :item_id
  has_many :purchases
end
