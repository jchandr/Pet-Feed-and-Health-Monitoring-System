# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

petinfos = [{:pet_weight => '120', :food_weight => '43', :water_volume => '32'},
            {:pet_weight => '114', :food_weight => '23', :water_volume => '35'},
            {:pet_weight => '120', :food_weight => '43', :water_volume => '32'},
    ]
    
petinfos.each do |petinfo|
    Petinfo.create!(petinfo)
end