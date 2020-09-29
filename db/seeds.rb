ziggy = Customer.create(name: "Ziggy")
mojo = Customer.create(name: "Mojo")
thor = Customer.create(name: "Thor")
ava = Customer.create(name: "Ava")

walt = ShopOwner.create(name: "Walt the Cow", shop_name: "Ample Hills Creamery")
whitty = ShopOwner.create(name: "Whitty the Chicken", shop_name: "Ample Hills Creamery")
pb = ShopOwner.create(name: "PB the Pig", shop_name: "Ample Hills Creamery")
mikey = ShopOwner.create(name: "Mikey Cole", shop_name: "Mikey Likes It Ice Cream")

cone1 = IceCreamCone.create(ice_cream_flavor: "Southern Hospitality", cone_type: "cake", number_of_scoops: 2, customer_id: ziggy, shop_owner_id: mikey)
cone2 = IceCreamCone.create(ice_cream_flavor: "Brady Bunch", cone_type: "sugar", number_of_scoops: 1, customer_id: mojo, shop_owner_id: mikey)
cone3 = IceCreamCone.create(ice_cream_flavor: "Strawberries & Cream", cone_type: "waffel", number_of_scoops: 1, customer_id: ava, shop_owner_id: whitty)
cone4 = IceCreamCone.create(ice_cream_flavor: "Corn To Run", cone_type: "cake", number_of_scoops: 3, customer_id: thor, shop_owner_id: pb)

