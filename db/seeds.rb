# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
airports = Airport.create([{ airport_code: 'IAD' }, { airport_code: 'SEA' }, { airport_code: 'CHS' }, { airport_code: 'DCA' }, { airport_code: 'BWI' }, { airport_code: 'LAX' }])
num_days = (1..90).to_a
dates = num_days.map {|n| Date.today + n}
dates.each do |d|
  flights_iad_sea = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 9, 30, 00), duration: 300, origin_id: 1, destination_id: 2},
                                   { departure_time: DateTime.civil(d.year, d.month, d.day, 7, 00, 00), duration: 300, origin_id: 1, destination_id: 2}])
  flights_sea_iad = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 5, 30, 00), duration: 280, origin_id: 2, destination_id: 1},
                                   { departure_time: DateTime.civil(d.year, d.month, d.day, 11, 35, 00), duration: 280, origin_id: 2, destination_id: 1}])
  flights_iad_chs = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 12, 30, 00), duration: 70, origin_id: 1, destination_id: 3},
                                   { departure_time: DateTime.civil(d.year, d.month, d.day, 14, 00, 00), duration: 70, origin_id: 1, destination_id: 3}]) 
  flights_chs_iad = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 13, 30, 00), duration: 70, origin_id: 3, destination_id: 1},
                                   { departure_time: DateTime.civil(d.year, d.month, d.day, 14, 45, 00), duration: 70, origin_id: 3, destination_id: 1}])
  flights_iad_bwi = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 5, 30, 00), duration: 20, origin_id: 1, destination_id: 5},
                                   { departure_time: DateTime.civil(d.year, d.month, d.day, 14, 00, 00), duration: 20, origin_id: 1, destination_id: 5}])
  flights_bwi_iad = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 7, 30, 00), duration: 20, origin_id: 5, destination_id: 1},
                                   { departure_time: DateTime.civil(d.year, d.month, d.day, 15, 55, 00), duration: 20, origin_id: 5, destination_id: 1}])
  flights_iad_lax = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 6, 25, 00), duration: 310, origin_id: 1, destination_id: 6},
                                   { departure_time: DateTime.civil(d.year, d.month, d.day, 8, 40, 00), duration: 310, origin_id: 1, destination_id: 6},
                                   { departure_time: DateTime.civil(d.year, d.month, d.day, 10, 00, 00), duration: 310, origin_id: 1, destination_id: 6}])
  flights_lax_iad = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 5, 55, 00), duration: 290, origin_id: 6, destination_id: 1},
                                   { departure_time: DateTime.civil(d.year, d.month, d.day, 11, 40, 00), duration: 290, origin_id: 6, destination_id: 1},
                                   { departure_time: DateTime.civil(d.year, d.month, d.day, 12, 25, 00), duration: 290, origin_id: 6, destination_id: 1}])
  flights_sea_chs = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 11, 25, 00),
                                     duration: 320, origin_id: 2, destination_id: 3}])
  flights_chs_sea = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 13, 25, 00),
                                     duration: 300, origin_id: 3, destination_id: 2}])
  flights_sea_bwi = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 5, 25, 00),
                                     duration: 320, origin_id: 2, destination_id: 5}])
  flights_bwi_sea = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 11, 25, 00),
                                     duration: 320, origin_id: 5, destination_id: 2}])
  flights_sea_lax = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 11, 25, 00),
                                     duration: 120, origin_id: 2, destination_id: 6}])
  flights_lax_sea = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 11, 25, 00), 
                                     duration: 120, origin_id: 6, destination_id: 2}])
  flights_chs_bwi = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 11, 25, 00), 
                                     duration: 70, origin_id: 3, destination_id: 5}])
  flights_bwi_chs = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 11, 25, 00), 
                                     duration: 70, origin_id: 5, destination_id: 3}])
  flights_chs_lax = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 11, 25, 00),
                                     duration: 320, origin_id: 3, destination_id: 6}])
  flights_lax_chs = Flight.create([{ departure_time: DateTime.civil(d.year, d.month, d.day, 11, 25, 00),
                                     duration: 320, origin_id: 6, destination_id: 3}])
end