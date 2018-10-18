# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all

u1 = User.create name: 'Christine', email: 'Christine@hotmail.com', password: 'chicken', image: 'axbbdvwv4kgzykpnj3yt', address:'34 Macrossan Road, Billoweala', dob:'1985/05/05'
u2 = User.create name: 'Joy', email: 'joy@ga.co', password: 'chicken', image: 'ddloqu4rebmundiertfj', address:'40 Macrossan Road, Billoweala', dob:'1974/10/10'
u3 = User.create name: 'Brad', email: 'brad@ga.co', password: 'chicken', image: 'wkndjxfnifuegdjf3q0t', address:'50 Haven Road, Billoweala', dob:'1980/07/07'

puts "Created #{User.all.length} users."


Post.destroy_all

p1 = Post.create date: '2018/10/05', heading: 'had a great day', content: 'Muse about quasar another world stirred by starlight culture venture. Something incredible is waiting to be known kindling the energy hidden in matter explorations finite but unbounded inconspicuous motes of rock and gas globular star cluster? Made in the interiors of collapsing stars extraordinary claims require extraordinary evidence kindling the energy hidden in matter star stuff harvesting star light citizens of distant epochs invent the universe.', image: 'positional-9'  #, user: u1

p2 = Post.create date: '2018/08/04', heading: 'this is pretty cool', content: 'A still more glorious dawn awaits kindling the energy hidden in matter the only home we have ever known gathered by gravity from which we spring a very small stage in a vast cosmic arena and billions upon billions upon billions upon billions upon billions upon billions upon billions.Muse about quasar another world stirred by starlight culture venture. Something incredible is waiting to be known kindling the energy hidden in matter explorations finite but unbounded inconspicuous motes of rock and gas globular star cluster? Made in the interiors of collapsing stars extraordinary claims require extraordinary evidence kindling the energy hidden in matter star stuff harvesting star light citizens of distant epochs invent the universe.', image: 'positional-4'

p3 = Post.create date: '2018/12/12', heading: 'What do you think about this?', content: 'White dwarf birth rings of Uranus colonies muse about billions upon billions. The sky calls to us vanquish the impossible with pretty stories for which there is little good evidence intelligent beings hundreds of thousands courage of our questions. A mote of dust suspended in a sunbeam take root and flourish invent the universe courage of our questions a mote of dust suspended in a sunbeam extraplanetary. Are creatures of the cosmos star stuff harvesting star light citizens of distant epochs not a sunrise but a galaxyrise the carbon in our apple pies extraplanetary and billions upon billions upon billions upon billions upon billions upon billions upon billions.', image: 'positional-16'

p4 = Post.create date: '2018/03/11', heading: 'I think this needs to be discussed', content: 'Concept of the number one Cambrian explosion at the edge of forever dispassionate extraterrestrial observer corpus callosum white dwarf? Vel illum qui dolorem eum fugiat quo voluptas nulla pariatur preserve and cherish that pale blue dot vel illum qui dolorem eum fugiat quo voluptas nulla pariatur star stuff harvesting star light nisi ut aliquid ex ea commodi consequatur Neque porro quisquam est? Network of wormholes Sea of Tranquility bits of moving fluff astonishment the only home weve ever known Jean-François Champollion and billions upon billions upon billions upon billions upon billions upon billions upon billions.', image: 'positional-18'

p5 = Post.create date: '2018/03/06', heading: 'What do you think about this?', content: 'Across the centuries colonies intelligent beings Orions sword great turbulent clouds star stuff harvesting star light. Trillion of brilliant syntheses sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt preserve and cherish that pale blue dot concept of the number one Apollonius of Perga. With pretty stories for which theres little good evidence nisi ut aliquid ex ea commodi consequatur totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo nisi ut aliquid ex ea commodi consequatur courage of our questions adipisci velit and billions upon billions upon billions upon billions upon billions upon billions upon billions.', image: 'positional-17'

puts "Created #{Post.all.length} posts."


u1.posts << p1 << p2
u2.posts << p3
u3.posts << p4 << p5

u1.liked_posts << p3 << p4
u2.liked_posts << p1 << p2
u3.liked_posts << p3 << p1

#
# Like.destroy_all
#
# l1 = Like.create likecreatedate: '2018/05/04', like: True
# l2 = Like.create likecreatedate: '2018/03/03', like: False
# l3 = Like.create likecreatedate: '2018/07/02', like: False
# l4 = Like.create likecreatedate: '2018/12/12', like: True
# l5 = Like.create likecreatedate: '2018/06/02', like: True
# l6 = Like.create likecreatedate: '2018/02/01', like: False
# l7 = Like.create likecreatedate: '2018/09/09', like: True
# l8 = Like.create likecreatedate: '2018/05/01', like: False
#
# puts "Created #{Like.all.length} likes."
#
#
#
# Photo.destroy_all
#
# ph1 = Photo.create photocreatedate: '2018/06/06', photo: 'https://spaceholder.cc/300x500'
# ph2 = Photo.create photocreatedate: '2018/06/06', photo: 'https://spaceholder.cc/300x500'
# ph3 = Photo.create photocreatedate: '2018/06/06', photo: 'https://spaceholder.cc/300x500'
# ph4 = Photo.create photocreatedate: '2018/06/06', photo: 'https://spaceholder.cc/300x500'
# ph5 = Photo.create photocreatedate: '2018/06/06', photo: 'https://spaceholder.cc/300x500'
# ph6 = Photo.create photocreatedate: '2018/06/06', photo: 'https://spaceholder.cc/300x500'
# ph7 = Photo.create photocreatedate: '2018/06/06', photo: 'https://spaceholder.cc/300x500'
# ph8 = Photo.create photocreatedate: '2018/06/06', photo: 'https://spaceholder.cc/300x500'
#
# puts "Created #{Photo.all.length} photos."
#
#
#
#
#
Comment.destroy_all

c1 = Comment.create content: 'Vastness is bearable only through love prime number quis nostrum exercitationem ullam corporis suscipit laboriosam vanquish the impossible quis nostrum'
c2 = Comment.create content: 'turbulent clouds with pretty stories for which theres little good evidence vel illum qui dolorem eum fugiat quo voluptas nulla pariatur culture.'
c3 = Comment.create content: 'Qui ratione voluptatem sequi nesciunt and billions upon billions upon billions upon billions upon billions upon billions upon billions.'
c4 = Comment.create content: 'Network of wormholes across the centuries cosmic ocean made in the interiors of collapsing stars sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam'
c5 = Comment.create content: 'Aaliquam quaerat voluptatem adipisci velit and billions upon billions upon billions upon billions upon billions upon billions upon billions.'
c6 = Comment.create content: 'As a patch of light colonies Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium rings of Uranus quis nostrum exercitationem ullam corporis suscipit laboriosam venture?'
c7 = Comment.create content: 'Bits of moving fluff encyclopaedia galactica rogue paroxysm of global death another world vastness is bearable only through love. Courage of our questions Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur Sea of Tranquility invent the universe two ghostly white figures in coveralls and helmets are soflty dancing totam rem aperiam'
c8 = Comment.create content: 'Aeaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo and billions upon billions upon billions upon billions upon billions upon billions upon billions.'
c9 = Comment.create content: 'Dream of the minds eye vanquish the impossible Jean-François Champollion laws of physics of brilliant syntheses great turbulent clouds.'
c10 = Comment.create content: 'Are creatures of the cosmos emerged into consciousness Neque porro quisquam est sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem the only home weve ever known a very small stage in a vast cosmic arena and billions upon billions upon billions upon billions upon billions upon billions upon billions.'

puts "Created #{Comment.all.length} comments."

# Associate comments with a post
p1.comments << c1 << c2 << c3
p2.comments << c4 << c5
p3.comments << c6
p4.comments << c7 << c8
p5.comments << c9 << c10

u1.comments << c1 << c2 << c3
u2.comments << c4 << c5 << c6
u3.comments << c9 << c10 << c7 << c8
