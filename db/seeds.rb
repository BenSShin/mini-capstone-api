#supplier creation
Supplier.create!([{ name: "Josh Hammell", email: "joshH12@gmail.com", phone_number: "(123)423-2342" }, { name: "Mike Han", email: "mikeH12@gmail.com", phone_number: "(123)542-2484" }])

# # product creation
Product.create!([{ name: "Chocolate Chip Cookies", price: 4, description: "warm cookie that your grandma would be proud of", in_stock: 100, supplier_id: 1 }, { name: "Banana bread", price: 3, description: "moist banana bread with walnuts and chopped chocolate", supplier_id: 1, in_stock: 100 }, { name: "Brownies", price: 5.00, description: "fudgy and gooey brownies thats amazing with icecream", supplier_id: 1, in_stock: 100 }, { name: "Carrot Cake", price: 29.99, description: "moist cake with organic carrots covered in cream cheese frosting", supplier_id: 1, in_stock: 20 }, { name: "Macaroons", price: 15, description: "Box of 5 delicate macaroons with a variety of fillings", in_stock: 50, supplier_id: 2 }, { name: "Canele", price: 4.99, description: "delicate french pastry that is made with custard with an incredibly crisp outer shell", supplier_id: 2, in_stock: 50 }, { name: "Cream Puffs", price: 4.99, description: "Made with choux passtry dough that is baked to form dome shaped puffs filled with vanilla custard which is lightened with whipped cream", in_stock: 50, supplier_id: 2 }])

#user creation
User.create!([{ name: "Ben Shin", email: "ben@example.com", password: "password", password_confirmation: "password", admin: true }, { name: "Alex Shin", email: "alex@gmail.com", password: "password", password_confirmation: "password", admin: false }])

# cookie image
Image.create!([{ url: "https://www.foodandwine.com/thmb/4_UScMzHQCxZzACBITHHmT_EM3U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Chocolate-Chunk-Halwah-Cookies-FT-RECIPE0923-1f8df755df6d468da98887aa846a2fe3.jpg", product_id: 1 },
               { url: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/62298.jpg", product_id: 1 }])

#canele image
Image.create!([{ url: "https://www.homecookingadventure.com/wp-content/uploads/2022/01/caneles_de_bordeaux_main.jpg", product_id: 6 },
               { url: "https://cdn.tasteatlas.com/images/dishes/62f83e07c05a47f9951a2dfbd32db73f.jpg", product_id: 6 }])
# macaroon image
Image.create!([{ url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2021/11/03/colorful-french-macarons-bakery-box-wood-surface-.jpg.rend.hgtvcom.1280.1280.suffix/1635922448414.jpeg", product_id: 5 },
               { url: "https://www.pauldmv.com/wp-content/uploads/2022/12/PAUL_Macarons_Large-Silo_1200x800.jpg", product_id: 5 }])
# carrotcake image
Image.create!([{ url: "https://inbloombakery.com/wp-content/uploads/2022/04/carrot-cake-featured-image.jpg", product_id: 4 },
               { url: "https://sugarspunrun.com/wp-content/uploads/2022/02/The-Best-Carrot-Cake-Recipe-1-of-1-4.jpg", product_id: 4 }])
# brownie images
Image.create!([{ url: "https://mytxkitchen.com/wp-content/uploads/2022/08/Fudgy-Chocolate-Brownies-4.jpg", product_id: 3 },
               { url: "https://www.southernliving.com/thmb/eLSgazITlYrKf9EFTR9y1L2mSxg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Southern-Living-Homemade_Brownies_023-3c582f0fba1842dd918a3d9c26c1ab59.jpg", product_id: 3 }])
# banana bread images
Image.create!([{ url: "https://www.hauteandhealthyliving.com/wp-content/uploads/2023/02/2-banana-bread-recipe-8-1.jpg", product_id: 2 },
               { url: "https://joyfoodsunshine.com/wp-content/uploads/2019/03/best-banana-bread-recipe-1x1-2-500x500.jpg", product_id: 2 }])

# Cream puff image
Image.create!([{ url: "https://princessbamboo.com/wp-content/uploads/2020/03/Untitled-design-2020-03-10T203600.069.png", product_id: 7 }, { url: "https://princessbamboo.com/wp-content/uploads/2020/03/Untitled-design-2020-03-10T203623.552-1024x576.png", product_id: 7 }])

#added categories
Category.create!([{ name: "pasteries" },
                  { name: "bread" }, { name: "dessert" }, { name: "cake" }, { name: "kosher" }])

#added categoryproducts
CategoryProduct.create!([{ product_id: 1, category_id: 1 },
                         { product_id: 2, category_id: 1 }, { product_id: 3, category_id: 3 }, { product_id: 4, category_id: 3 }, { product_id: 4, category_id: 4 }, { product_id: 5, category_id: 3 }, { product_id: 5, category_id: 5 }, { product_id: 6, category_id: 3 }, { product_id: 6, category_id: 1 }, { product_id: 7, category_id: 3 }, { product_id: 7, category_id: 1 }])
