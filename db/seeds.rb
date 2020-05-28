# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
airports = Airport.create([{ airport_code: 'IAD' }, { airport_code: 'LAG' }, { airport_code: 'CHS' }, { airport_code: 'DCA' }, { airport_code: 'BWI' }, { airport_code: 'LAX' }])
flights = Flight.create([{ departure: DateTime.civil(2020, 6, 1, 21, 30, 00), duration: 90, origin_id: 1, destination_id: 2},
                         { departure: DateTime.civil(2020, 6, 1, 07, 30, 00), duration: 30, origin_id: 1, destination_id: 3}, 
                         { departure: DateTime.civil(2020, 6, 1, 11, 00, 00), duration: 30, origin_id: 1, destination_id: 4},
                         { departure: DateTime.civil(2020, 6, 1, 21, 30, 00), duration: 30, origin_id: 4, destination_id: 5},
                         { departure: DateTime.civil(2020, 6, 1, 21, 30, 00), duration: 300, origin_id: 5, destination_id: 6},
                         { departure: DateTime.civil(2020, 6, 1, 21, 30, 00), duration: 300, origin_id: 6, destination_id: 2},
                         { departure: DateTime.civil(2020, 6, 2, 11, 00, 00), duration: 30, origin_id: 1, destination_id: 4},
                         { departure: DateTime.civil(2020, 6, 3, 21, 30, 00), duration: 30, origin_id: 4, destination_id: 5},
                         { departure: DateTime.civil(2020, 6, 3, 21, 30, 00), duration: 300, origin_id: 5, destination_id: 6},
                         { departure: DateTime.civil(2020, 6, 4, 21, 30, 00), duration: 300, origin_id: 6, destination_id: 2},])