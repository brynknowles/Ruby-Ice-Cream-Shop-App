Customer.destroy_all
IceCreamShop.destroy_all
IceCreamCone.destroy_all

ziggy = Customer.create(name: "Ziggy")
mojo = Customer.create(name: "Mojo")
thor = Customer.create(name: "Thor")
ava = Customer.create(name: "Ava")

ample = IceCreamShop.create(name: "Ample Hills Creamery", location: "Prospect Heights, Brooklyn")
creme = IceCreamShop.create(name: "Creme And Cocoa", location: "Prospect-Lefferts Gardens, Brooklyn")


cone1 = IceCreamCone.create(flavor: "Strawberries & Cream", cone: "waffel", scoops: 1, customer: ava, ice_cream_shop: ample)
cone2 = IceCreamCone.create(flavor: "Island Gal", cone: "cake", scoops: 1, customer: ziggy, ice_cream_shop: creme)


