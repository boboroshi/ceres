# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Adding plant statuses"
Status.delete_all
statuses = Status.create(
  [
    { name: 'Annual' },
    { name: 'Biennial' },
    { name: 'Perennial' }
  ]
)

puts "Adding seed sources..."
Source.delete_all
sources = Source.create (
  [
    {
      name: 'Baker Creek Heirloom Seeds',
      url: 'http://www.rareseeds.com',
      email: 'seeds@rareseeds.com',
      telephone: '417.924.8917',
      address: 'Baker Creek Heirloom Seed Co.<br>2278 Baker Creek Road<br>Mansfield, MO 65704',
      notes: ''
    },
    {
      name: 'High Mowing Organic Seeds',
      url: 'http://www.highmowingseeds.com',
      email: '',
      telephone: '802.472.6174',
      address: 'High Mowing Organic Seeds<br>76 Quarry Rd.<br>Wolcott, VT 05680',
      notes: ''
    },
    {
      name: 'Thomas Jefferson Center of Historic Plants',
      url: 'http://www.monticello.org/site/house-and-gardens/thomas-jefferson-center-historic-plants',
      email: 'chp@monticello.org',
      telephone: '434.984.9819',
      address: '1293 Milton Rd, Charlottesville, VA 22902',
      notes: ''
    },
    {
      name: 'Horizon Herbs',
      url: 'http://www.horizonherbs.com',
      email: '',
      telephone: '541.846.6704',
      address: 'Horizon Herbs, LLC<br>PO Box 69<br>Williams, OR 97544',
      notes: ''
    },
    {
      name: 'Johnny\'s Select Seeds',
      url: 'http://www.johnnyseeds.com',
      email: 'service@johnnyseeds.com',
      telephone: '877.564.6697',
      address: 'Johnny\'s Select Seeds<br>PO Box 299<br>Waterville, ME 04903',
      notes: ''
    }

  ]
)

puts "Adding plant families..."
Family.delete_all
open(Rails.root + "db/seeds/plant_families.txt") do |pf|
  pf.read.each_line do |family|
    name = family
    Family.create!(:name => name)
  end
end