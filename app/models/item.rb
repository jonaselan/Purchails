class Item < ApplicationRecord
  belongs_to :itemable, :polymorphic => true
end
