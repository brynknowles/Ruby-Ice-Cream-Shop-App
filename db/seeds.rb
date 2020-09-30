Customer.destroy_all
IceCreamShop.destroy_all
IceCreamCone.destroy_all

ziggy = Customer.create(name: "Ziggy")
mojo = Customer.create(name: "Mojo")
thor = Customer.create(name: "Thor")
ava = Customer.create(name: "Ava")

ample = IceCreamShop.create(name: "Ample Hills Creamery")
blue = IceCreamShop.create(name: "Blue Marble Ice Cream")
mikey = IceCreamShop.create(name: "Mikey Likes It Ice Cream")
creme = IceCreamShop.create(name: "Creme And Cocoa")


cone1 = IceCreamCone.create(flavor: "Southern Hospitality", cone: "cake", scoops: 2, customer: ziggy, shop: mikey)
cone2 = IceCreamCone.create(flavor: "Brady Bunch", cone: "sugar", scoops: 1, customer: mojo, shop: mikey)
cone3 = IceCreamCone.create(flavor: "Strawberries & Cream", cone: "waffel", scoops: 1, customer: ava, shop: ample)
cone4 = IceCreamCone.create(flavor: "Corn To Run", cone: "cake", scoops: 3, customer: thor, shop: ample)
cone5 = IceCreamCone.create(flavor: "Corn To Run", cone: "sugar", scoops: 1, customer: mojo, shop: ample)
cone6 = IceCreamCone.create(flavor: "Island Gal", cone: "cake", scoops: 1, customer: ava, shop: creme)
cone7 = IceCreamCone.create(flavor: "Just Vanilla", cone: "waffel", scoops: 2, customer: ziggy, shop: blue)


