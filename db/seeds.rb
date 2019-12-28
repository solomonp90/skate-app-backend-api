# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sk8r1 = Skater.create(name:'bob',zip:'10452')
sk8r2 = Skater.create(name:'tony',zip:'10451')
sk8r3 = Skater.create(name:'steve',zip:'10450')
sk8r4 = Skater.create(name:'eric',zip:'11212')
sk8r5 = Skater.create(name:'andy',zip:'11234')

spt1 = Spot.create(name:'161st Courthouse',image:'https://quartersnacks.com/wp-content/uploads/2011/07/P6110018-300x225.jpg',kind:'street plaza',details:'dont go before 6!',zip:'10452')
spt2 = Spot.create(name:'River Ave Skate Park',image:'https://www.skateboard.com.au/images/bronxpark3.jpg',kind:'Skate Park',details:'small so it gets packed',zip:'10451')
spt3 = Spot.create(name:'Mullaly Skate Park',image:'https://i.ytimg.com/vi/iNGyex2EDeE/maxresdefault.jpg',kind:'bike park',details:'classic park been there for years',zip:'10452')
spt4 = Spot.create(name:'Tompkins Square Park',image:'http://www.jenkemmag.com/home/wp-content/uploads/2019/09/savedtompkins-54-1.jpg',kind:'flat ground park',details:'nice flat some rails now n then some ramps most come to warm up',zip:'10009')
spt5 = Spot.create(name:'lenox ledges',image:'https://quartersnacks.com/wp-content/uploads/2016/05/1.jpg',kind:'street ledges',details:'classic spot has been around for years',zip:'10026')

pst1 = Post.create(author:'bob',content:'be careful on the ledge to bank',image:'https://quartersnacks.com/wp-content/uploads/2018/08/bronx-courthouse.png',video:'vidurl1',skater_id:sk8r1.id,spot_id:spt1.id)
pst2 = Post.create(author:'tony',content:'post2',image:'imgurl2',video:'vidurl2',skater_id:sk8r2.id,spot_id:spt2.id)
pst3 = Post.create(author:'steve',content:'post3',image:'imgurl3',video:'vidurl3',skater_id:sk8r3.id,spot_id:spt3.id)
pst4 = Post.create(author:'eric',content:'post4',image:'imgurl4',video:'vidurl4',skater_id:sk8r4.id,spot_id:spt4.id)
pst5 = Post.create(author:'andy',content:'post5',image:'imgurl5',video:'vidurl5',skater_id:sk8r5.id,spot_id:spt5.id)

puts("seeded successfully")