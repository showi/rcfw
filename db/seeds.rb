# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

User.create([{:login => "admin", :password => "admin", :password_confirmation => "admin", :isadmin => true}])
#:crypted_password => "fb5e6e1349efd04ce7e94ed6dd97c59a3647676d6df83358775a81c8f64dd005199cab006a1144677971372a559165696612a389d30faab2025a1d996db091e2", :password_salt => "hd7E1zuNwoDMJEJZG_7P"}])

cattype = Cattype.create([ {:name => 'dish'}])

root_dish = Category.create([{ :name => "Root Dish", 
	:cattype_id => cattype.first.id,
	:weight => 1,
}])

cat = Category.create([{ :name => "aperitif",
	:parent_id => root_dish.first.id, 
	:cattype_id => cattype.first.id,
	:weight => 1,
}])



cat_dish_root = Category.create([{ :name => "entree",
	:parent_id => root_dish.first.id, 
	:cattype_id => cattype.first.id,
	:weight => 2,
}])
cat = Category.create([{ :name => "froide",
	:parent_id => cat_dish_root.first.id, 
	:cattype_id => cattype.first.id,
	:weight => 2,
}])
Dish.create([{:name => "Salade de saison", :price => 350, :available => true,
	:category_id => cat.first.id }])
Dish.create([{:name => "Assiette de charcuterie", :price => 350, :available => true,
	:category_id => cat.first.id }])
cat = Category.create([{ :name => "chaude",
	:parent_id => cat_dish_root.first.id, 
	:cattype_id => cattype.first.id,
	:weight => 2,
}])
Dish.create([{:name => "Potage du chef", :price => 350, :available => true,
	:category_id => cat.first.id }])

cat_dish_root = Category.create([{ :name => "plat principal",
	:parent_id => root_dish.first.id, 
	:cattype_id => cattype.first.id,
	:weight => 3,
}])
cat = Category.create([{ :name => "pate",
	:parent_id => cat_dish_root.first.id, 
	:cattype_id => cattype.first.id,
	:weight => 2,
}])
Dish.create([{:name => "Taliatelle au saumon", :price => 450, :available => true,
	:category_id => cat.first.id }])
cat = Category.create([{ :name => "viande",
	:parent_id => cat_dish_root.first.id, 
	:cattype_id => cattype.first.id,
	:weight => 2,
}])
Dish.create([{:name => "Rotie de porc et pomme sautee", :price => 570, :available => true,
	:category_id => cat.first.id }])
cat = Category.create([{ :name => "poisson",
	:parent_id => cat_dish_root.first.id, 
	:cattype_id => cattype.first.id,
	:weight => 2,
}])
Dish.create([{:name => "Crevette sautee au basilic", :price => 600, :available => true,
	:category_id => cat.first.id }])

cat = Category.create([{ :name => "dessert",
	:parent_id => root_dish.first.id, 
	:cattype_id => cattype.first.id,
	:weight => 4,
}])
Dish.create([{:name => "Glace 3 boules", :price => 210, :available => true,
	:category_id => cat.first.id }])
Dish.create([{:name => "Salade de fruit", :price => 300, :available => true,
	:category_id => cat.first.id }])
Dish.create([{:name => "Tarte au pomme", :price => 200, :available => true,
	:category_id => cat.first.id }])

cat = Category.create([{ :name => "boisson",
	:parent_id => root_dish.first.id, 
	:cattype_id => cattype.first.id,
	:weight => 5,
}])
Dish.create([{:name => "coca-cola", :price => 150, :available => true,
	:category_id => cat.first.id }])
Dish.create([{:name => "ricard", :price => 400, :available => true,
	:category_id => cat.first.id }])
Dish.create([{:name => "evian", :price => 200, :available => true,
	:category_id => cat.first.id }])

Cattype.create([{:name => "menu"}])
#cattype = Cattype.create([ {:name => 'dish'}, {:name => 'menu'}])
