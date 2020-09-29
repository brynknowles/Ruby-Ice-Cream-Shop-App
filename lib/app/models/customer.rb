class Customer < ActiveRecord::Base
    has_many :ice_cream_cones
    has_many :shop_owners, through: :ice_cream_cones
end