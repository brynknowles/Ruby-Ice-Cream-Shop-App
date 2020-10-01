Customer.destroy_all
IceCreamShop.destroy_all
IceCreamCone.destroy_all

ziggy = Customer.create(name: "Ziggy")
mojo = Customer.create(name: "Mojo")
thor = Customer.create(name: "Thor")
ava = Customer.create(name: "Ava")

ample = IceCreamShop.create(name: "Ample Hills Creamery", location: "Prospect Heights, Brooklyn")
creme = IceCreamShop.create(name: "Creme And Cocoa", location: "Prospect-Lefferts Gardens, Brooklyn")


cone1 = IceCreamCone.create(flavor: "Strawberries & Cream", cone: "cake", scoops: 1, customer: ava, ice_cream_shop: ample)
cone2 = IceCreamCone.create(flavor: "Corn To Run", cone: "waffle", scoops: 2, customer: thor, ice_cream_shop: ample)
cone3 = IceCreamCone.create(flavor: "Cherry Lime Riickey", cone: "cake", scoops: 3, customer: mojo, ice_cream_shop: ample)
cone4 = IceCreamCone.create(flavor: "Caribbean Vanilla Creme", cone: "cake", scoops: 1, customer: mojo, ice_cream_shop: creme)
cone5 = IceCreamCone.create(flavor: "Celebrate It's Your B-Day", cone: "waffle", scoops: 3, customer: ziggy, ice_cream_shop: creme)
cone6 = IceCreamCone.create(flavor: "Island Gal", cone: "sugar", scoops: 2, customer: ziggy, ice_cream_shop: creme)


