class Book < ApplicationRecord
  has_many :items, :as => :itemable
end
