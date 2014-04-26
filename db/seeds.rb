# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  Contact.create(name: 'Ilona', phone: 3854833, email: 'chacraborti@mail.ru')
#Однако, в Rails есть особенность 'seeds' которая должна быть использована для заполнения базы данных начальными данными. Это действительно простая особенность: просто заполните db/seeds.rb некоторым кодом Ruby и запустите rake db:seed:
#   5.times do |i|
#   Product.create(name: "Product ##{i}", description: "A product.")
#   end
#В основном, это более чистый способ настроить базу данных для пустого приложения.