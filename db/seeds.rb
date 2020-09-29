Customer.destroy_all
ShopOwner.destroy_all
IceCreamCone.destroy_all

ziggy = Customer.create(name: "Ziggy")
mojo = Customer.create(name: "Mojo")
thor = Customer.create(name: "Thor")
ava = Customer.create(name: "Ava")

walt = ShopOwner.create(name: "Walt the Cow", shop_name: "Ample Hills Creamery")
whitty = ShopOwner.create(name: "Whitty the Chicken", shop_name: "Ample Hills Creamery")
pb = ShopOwner.create(name: "PB the Pig", shop_name: "Ample Hills Creamery")
mikey = ShopOwner.create(name: "Mikey Cole", shop_name: "Mikey Likes It Ice Cream")

cone1 = IceCreamCone.create(ice_cream_flavor: "Southern Hospitality", cone_type: "cake", number_of_scoops: 2, customer: ziggy, shop_owner: mikey)
cone2 = IceCreamCone.create(ice_cream_flavor: "Brady Bunch", cone_type: "sugar", number_of_scoops: 1, customer: mojo, shop_owner: mikey)
cone3 = IceCreamCone.create(ice_cream_flavor: "Strawberries & Cream", cone_type: "waffel", number_of_scoops: 1, customer: ava, shop_owner: whitty)
cone4 = IceCreamCone.create(ice_cream_flavor: "Corn To Run", cone_type: "cake", number_of_scoops: 3, customer: thor, shop_owner: pb)
cone5 = IceCreamCone.create(ice_cream_flavor: "Corn To Run", cone_type: "sugar", number_of_scoops: 1, customer: mojo, shop_owner: walt)

