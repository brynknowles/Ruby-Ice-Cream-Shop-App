class IceCreamCone < ActiveRecord::Base
    belongs_to :customer
    belongs_to :ice_cream_shop
end