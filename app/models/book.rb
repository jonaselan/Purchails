class Book < ApplicationRecord
  has_one :item, :as => :itemable
end
