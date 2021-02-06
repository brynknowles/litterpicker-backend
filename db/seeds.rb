# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "users", force: :cascade do |t|
#     t.string "avatar"
#     t.string "username"
#     t.string "password"
#     t.integer "age"
#     t.string "catchphrase"
#     t.integer "park_badge"
#     t.integer "playground_badge"
#     t.integer "shoreline_badge"
#     t.integer "trail_badge"
#     t.integer "general_badge"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
# end

# badge types: park, playground, shoreline, trail, general

User.destroy_all
Location.destroy_all
Cleanup.destroy_all


users = User.create!([
    {
        avatar: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.greatoutdoorshop.com%2Fshop%2Fwoodsy-owl-sticker%2F&psig=AOvVaw1JyQEFwplI4QGCvBSiVCJV&ust=1612539009485000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOjx2IjG0O4CFQAAAAAdAAAAABAF",
        username: "Woodsy Owl",
        password: "1234",
        age: 50,
        catchphrase: "Give a hoot, don't pollute!",
        park_badge: 4,
        playground_badge: 2,
        shoreline_badge: 10,
        trail_badge: 6,
        general_badge: 12
    },
    {
        avatar: "http://media.al.com/montgomery-commentary/photo/9385840-large.jpg",
        username: "litterbuster",
        password: "1234",
        age: 15,
        catchphrase: "Don't be a litterbug!",
        park_badge: 10,
        playground_badge: 0,
        shoreline_badge: 1,
        trail_badge: 3,
        general_badge: 8
    }
]) 

# create_table "locations", force: :cascade do |t|
#     t.string "name"
#     t.string "category"
#     t.float "latitude"
#     t.float "longitude"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
# end

locations = Location.create!([
    {
        name: 'Prospect Park',
        category: 'shoreline',
        latitude: 40.656778,
        longitude: -73.967944
    },
    {
        name: 'Prospect Park',
        category: 'park',
        latitude: 40.661043,
        longitude: -73.968406
    },
    {
        name: 'Prospect Park',
        category: 'park',
        latitude: 40.655090,
        longitude: -73.963229
    },
    {
        name: 'Prospect Park',
        category: 'playground',
        latitude: 40.655316,
        longitude: -73.973061
    },
    {
        name: 'Prospect Park',
        category: 'trail',
        latitude: 40.656626,
        longitude: -73.973383
    },
    {
        name: "Coney Island",
        category: 'shoreline',
        latitude: 40.573801, 
        longitude: -73.969725
    },
    {
        name: "Brooklyn Children's Museum",
        category: 'general',
        latitude: 40.674796, 
        longitude: -73.943672
    }
])

# create_table "cleanups", force: :cascade do |t|
#     t.string "name"
#     t.string "category"
#     t.string "image"
#     t.date "date"
#     t.integer "duration"
#     t.text "comment"
#     t.integer "cheer"
#     t.bigint "user_id", null: false
#     t.bigint "location_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["location_id"], name: "index_cleanups_on_location_id"
#     t.index ["user_id"], name: "index_cleanups_on_user_id"
# end

cleanups = Cleanup.create!([
    {
        name: 'The Peninsula',
        category: 'shoreline',
        image: "https://upload.wikimedia.org/wikipedia/commons/3/3a/Prospect_Park_New_York_October_2015_003.jpg",
        date: "2021-1-20",
        duration: 1.5,
        comment: "Pick up after your dogs!",
        cheer: 4,
        user_id: 1,
        location_id: 1
    },
    {
        name: 'Nethermead',
        category: 'park',
        image: "https://onthegrid.city/imager/s3_amazonaws_com/onthegrid.city/assets/grid/brooklyn/prospect-lefferts-gardens/nethermead/Nethermead_4_299006722e285f47655d17d1c9136337.jpg",
        date: "2020-08-22",
        duration: 1.5,
        comment: "There was so much trash here from a birthday party. Please clean up after yourselves, folks!",
        cheer: 1,
        user_id: 1,
        location_id: 2
    },
    {
        name: 'East Drive Entrance',
        category: 'picnic',
        image: "https://i1.wp.com/www.bkreader.com/wp-content/uploads/2017/07/carfreeprospectpark_18053668.jpg?fit=640%2C360&ssl=1",
        date: "2020-12-23",
        duration: 1.5,
        comment: "The amount of plastic party confetti here is astounding.",
        cheer: 10,
        user_id: 2,
        location_id: 3
    },
    {
        name: 'Vanderbilt Playground',
        category: 'playground',
        image: "https://media.timeout.com/images/102743002/630/472/image.jpg",
        date: "2021-1-05",
        duration: 1.5,
        comment: "Looks like the pre-teens had a field day here last night.",
        cheer: 0,
        user_id: 1,
        location_id: 4
    },
    {
        name: 'Paved trail',
        category: 'trail',
        image: "https://cdn-img-feed.streeteasy.com/nyc/image/24/408139724.jpg",
        date: "2020-11-06",
        duration: 1.5,
        comment: "Lots of broken glass!",
        cheer: 6,
        user_id: 2,
        location_id: 5
    }
])



