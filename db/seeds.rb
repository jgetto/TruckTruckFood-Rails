# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Truck.create(:name => 'Clover_Food_Truck', :site_url => "http://www.cloverfoodlab.com/", :lat => 42.359705, :lon => -71.059215,
             :location => "1 Cambridge St Boston", :image_url => "http://pixelatedcrumb.files.wordpress.com/2010/08/img_0750.jpg",
             :description => "We’re here to make food you love, the kind you talk about and look forward to eating. The Clover Food Truck is going to be serving up a new type of fast food. This food is local, it’s just-cut, when we can it will be organic.")
Truck.create(:name => 'Bon_Me', :site_url => "http://www.cityofboston.gov/Images_Documents/Bon_Me_Menu_v2_tcm3-19773.pdf", :lat => 42.360406, :lon => -71.057993,
             :location => "1 City Hall Square Boston", :image_url => "http://www.cityofboston.gov/Images_Documents/bonmetruckfinal_tcm3-20023.gif",
             :description => "Bon Me serves Vietnamese-inspired sandwiches, rice bowls and noodle salads. We offer reasonably priced lunch fare that customers can feel good about - food with plenty of healthy options, including whole-grain breads and rice and locally sourced in-season produce, all served in eco-friendly containers.")
Truck.create(:name => 'Momogoose', :site_url => "http://www.cityofboston.gov/Images_Documents/momogoose_boston_tcm3-19775.pdf", :lat => 42.3601521, :lon => -71.0561066,
             :location => "1 Fanueil Hall, Boston", :image_url => "http://www.cityofboston.gov/Images_Documents/Gooselogo-w-border_tcm3-20035.jpg",
             :description => "We offer vegan/non-vegan Asian cuisine and desserts. Each meal is balanced nutritiously and deliciously. Our food is cooked fresh and served hot daily. We start with quality ingredients, infuse them with South and Southeast Asian flavors, and fire-grill to finish. Our cooking is scientifically-driven to minimize calories, while preserving taste and nutrition. Weʼre an open kitchen – all our recipes will be posted online under Creative Commons.")
Truck.create(:name => 'World_Eats', :site_url => 'http://www.cityofboston.gov/Images_Documents/WorldEatsRevisedMenu_tcm3-19792.pdf', :lat => 42.3542944, :lon => -71.0655355,
             :location => 'Boston Common', :image_url => 'http://profile.ak.fbcdn.net/hprofile-ak-snc4/hs447.snc4/50336_160099990668621_4500_n.jpg',
             :description => 'World Eats (WE) strives to celebrate the unique diversity of Boston by offering freshly baked breads and healthy fillings from around the globe that customers may mix and match. Thus, South American ‘arepas’ filled with Korean BBQ short ribs, a side of Caribbean plantains and an Indian mango ’lassi’ exemplify the breadth of our international offering.')
