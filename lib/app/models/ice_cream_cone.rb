class IceCreamCone < ActiveRecord::Base
    belongs_to :customer
    belongs_to :shop_owner
end