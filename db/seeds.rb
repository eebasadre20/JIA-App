# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# churches = [
#   {
#     name: 'jia-cdo',
#     description: 'JIA CDO - Main Church',
#     address: 'Cagayan de Oro City'
#   },
#   {
#     name: 'acts-cdo',
#     description: 'JIA CDO - ACTS Church',
#     address: 'Cagayan de Oro City'
#   },
#   {
#     name: 'ywav-cdo',
#     description: 'JIA CDO - YWAV Church',
#     address: 'Cagayan de Oro City'
#   },
#   {
#     name: 'jtc-cdo',
#     description: 'JIA CDO - JTC Church',
#     address: 'Cagayan de Oro City'
#   },
#   {
#     name: 'jia-iligan',
#     description: 'JIA Iligan Church',
#     address: 'Iligan City'
#   },
#   {
#     name: 'jia-laguindingan',
#     description: 'JIA Laguindingan Church',
#     address: 'Laguindingan'
#   },
#   {
#     name: 'jia-igpit',
#     description: 'JIA Igpit Church',
#     address: 'Igpit'
#   },
#   {
#     name: 'jia-agora',
#     description: 'JIA Agora Church',
#     address: 'Agora'
#   },
#   {
#     name: 'jia-kibungsod',
#     description: 'JIA Kibungsod Church',
#     address: 'Kibungsod'
#   }
# ]

# categories = [
#   { name: 'Adult' },
#   { name: 'Kid' }
# ]

# events = [
#   { 
#     name: 'Anniversary 2017',
#     description: 'JIA CDO 27th Anniversary',
#     start_date: DateTime.now.to_date,
#     end_date: Date.tomorrow
#   }
# ]

# churches.each do | church |
#   Church.create( church )
# end

# categories.each do | category |
#   Category.create( category )
# end

# events.each do | event |
#   Event.create( event )
# end

admins = [
  {
    email: 'jia.super.admin@jia.com',
    username: 'jia.super.admin',
    password: 'jia.super.admin',
    church_id: 1,
    role: 'jia.super.admin'
  },
  {
    email: 'jia.cdo.super.admin@jia.com',
    username: 'jia.cdo.super.admin',
    password: 'jia.cdo.super.admin',
    church_id: 1,
    role: 'jia.cdo.super.admin'
  },
  {
    email: 'acts.super.admin@jia.com',
    username: 'acts.super.admin',
    password: 'acts.super.admin',
    church_id: 2,
    role: 'acts.super.admin'
  },
  {
    email: 'ywav.super.admin@jia.com',
    username: 'ywav.super.admin',
    password: 'ywav.super.admin',
    church_id: 3,
    role: 'ywav.super.admin'
  },
  {
    email: 'jtc.super.admin@jia.com',
    username: 'jtc.super.admin',
    password: 'jtc.super.admin',
    church_id: 4,
    role: 'jtc.super.admin'
  },
  {
    email: 'iligan.super.admin@jia.com',
    username: 'iligan.super.admin',
    password: 'iligan.super.admin',
    church_id: 5,
    role: 'iligan.super.admin'
  },
  {
    email: 'laguindingan.super.admin@jia.com',
    username: 'laguindingan.super.admin',
    password: 'laguindingan.super.admin',
    church_id: 6,
    role: 'laguindingan.super.admin'
  },
  {
    email: 'igpit.super.admin@jia.com',
    username: 'igpit.super.admin',
    password: 'igpit.super.admin',
    church_id: 7,
    role: 'igpit.super.admin'
  },
  {
    email: 'agora.super.admin@jia.com',
    username: 'agora.super.admin',
    password: 'agora.super.admin',
    church_id: 8,
    role: 'agora.super.admin'
  },
  {
    email: 'kibungsod.super.admin@jia.com',
    username: 'kibungsod.super.admin',
    password: 'kibungsod.super.admin',
    church_id: 9,
    role: 'kibungsod.super.admin'
  } 
]

admins.each do | admin |
  Admin.create( admin )
end