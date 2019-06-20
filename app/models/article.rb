class Article < ApplicationRecord
  has_one :item, :as => :itemable
end
