# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

churches = [
  {
    name: 'jia-cdo',
    description: 'JIA CDO - Main Church',
    address: 'Cagayan de Oro City'
  },
  {
    name: 'acts-cdo',
    description: 'JIA CDO - ACTS Church',
    address: 'Cagayan de Oro City'
  },
  {
    name: 'ywav-cdo',
    description: 'JIA CDO - YWAV Church',
    address: 'Cagayan de Oro City'
  },
  {
    name: 'jtc-cdo',
    description: 'JIA CDO - JTC Church',
    address: 'Cagayan de Oro City'
  },
  {
    name: 'jia-iligan',
    description: 'JIA Iligan Church',
    address: 'Iligan City'
  },
  {
    name: 'jia-laguindingan',
    description: 'JIA Laguindingan Church',
    address: 'Laguindingan'
  },
  {
    name: 'jia-igpit',
    description: 'JIA Igpit Church',
    address: 'Igpit'
  },
  {
    name: 'jia-agora',
    description: 'JIA Agora Church',
    address: 'Agora'
  },
  {
    name: 'jia-kibungsod',
    description: 'JIA Kibungsod Church',
    address: 'Kibungsod'
  }
]

categories = [
  { name: 'Adult' },
  { name: 'Kid' }
]

events = [
  { 
    name: 'Anniversary 2017',
    description: 'JIA CDO 27th Anniversary',
    start_date: DateTime.now.to_date,
    end_date: Date.tomorrow
  }
]

# churches.each do | church |
#   Church.create( church )
# end

categories.each do | category |
  Category.create( category )
end

# events.each do | event |
#   Event.create( event )
# end