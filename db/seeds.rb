Customer.destroy_all
IceCreamShop.destroy_all
IceCreamCone.destroy_all

ziggy = Customer.create(name: "Ziggy")
mojo = Customer.create(name: "Mojo")
thor = Customer.create(name: "Thor")
ava = Customer.create(name: "Ava")

bj = IceCreamShop.create(name: "Ben & Jerry's")
br = IceCreamShop.create(name: "Baskin Robbins")


cone1 = IceCreamCone.create(flavor: "Strawberries & Cream", cone: "cake", scoops: 1, customer: ava, ice_cream_shop: bj)
cone2 = IceCreamCone.create(flavor: "Corn To Run", cone: "waffle", scoops: 2, customer: thor, ice_cream_shop: bj)
cone3 = IceCreamCone.create(flavor: "Cherry Lime Riickey", cone: "cake", scoops: 3, customer: mojo, ice_cream_shop: bj)
cone4 = IceCreamCone.create(flavor: "Caribbean Vanilla Creme", cone: "cake", scoops: 1, customer: mojo, ice_cream_shop: br)
cone5 = IceCreamCone.create(flavor: "Celebrate It's Your B-Day", cone: "waffle", scoops: 3, customer: ziggy, ice_cream_shop: br)
cone6 = IceCreamCone.create(flavor: "Island Gal", cone: "sugar", scoops: 2, customer: ziggy, ice_cream_shop: br)



