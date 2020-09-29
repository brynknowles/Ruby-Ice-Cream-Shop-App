class ShopOwner < ActiveRecord::Base
    has_many :ice_cream_cones
    has_many :customers, through: :ice_cream_cones
end