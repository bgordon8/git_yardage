# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(
    username:"GG", 
    email: "brian@email.com", 
    first_name: "Brian", 
    last_name: "Gordon", 
    handicap: 4,
    password: "password"
    )

course1 = Course.create(name: "Meadow Hills",city: "Aurora", state: "Colorado", address: "3900 S Dawson St", rating: 8)

hole1 = Hole.create(
    number: 1,
    yards: 453, 
    par: 4, 
    handicap: 1,
    course_id: course1.id
    )
coord1 = Coord.create(
    coord_location: "TEE",
    lat: 39.649927,
    long: -104.819796, 
    hole_id: hole1.id
    ) 
coord2 = Coord.create(
    coord_location: "MID",
    lat: 39.647872,
    long: -104.819965,
    hole_id: hole1.id
) 
coord3 = Coord.create(
    coord_location: "GREEN",
    lat: 39.646164,
    long: -104.819867,
    hole_id: hole1.id
) 

        
        

score1 = Score.create(
    strokes: 4,
    chips: 1,
    putts: 1,
    user_id: user1.id,
    hole_id: hole1.id
)