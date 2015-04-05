class Location < ActiveRecord::Base
  has_many :inventories

  def full
    "#{street}, #{city}, #{region}, #{country}, #{region_code}"
  end
end
