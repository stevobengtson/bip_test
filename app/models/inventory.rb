class Inventory < ActiveRecord::Base
  has_one :location
end
