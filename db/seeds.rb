# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create! :name => 'admin@toru.kg', :email => 'admin@toru.kg', :password => 'p@ssw0rd', :password_confirmation => 'p@ssw0rd'
