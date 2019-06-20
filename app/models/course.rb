class Course < ApplicationRecord
  has_one :item, :as => :itemable
end
