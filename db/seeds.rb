print "Creating users..."

User.destroy_all

u1 = User.create! first_name: "Admin", last_name: "Admin", email: "admin@ga.co", address: "8 st camden", password: "chicken", is_admin: true
u2 = User.create! first_name: "Suraj", last_name: "Sharma", email: "suraj@ga.co", address: "11 st narellen", password: "chicken", is_admin: true
u3 = User.create! first_name: "Rowena", last_name: "Leung", email: "ro@ga.co", address: "23 st amberville", password: "chicken", is_admin: true
u4 = User.create! first_name: "Luke", last_name: "Hammmer", email: "luke@ga.co", address: "3 st bair athol", password: "chicken", is_admin: true
u5 = User.create! first_name: "Frankie", last_name: "Tsoi", email: "frankie@ga.co", address: "2 st bornville ", password: "chicken", is_admin: false
u6 = User.create! first_name: "Angela", last_name: "Forgot", email: "angela@ga.co", address: "no st amberville", password: "chicken", is_admin: false
u7 = User.create! first_name: "Dan", last_name: "Lord", email: "danlord@ga.co", address: "33 st amberville", password: "chicken", is_admin: false

puts "created #{User.count} users."

print "Creating animals..."
Animal.destroy_all

a1 = Animal.create!(breed: "pomerian", description: "The adage that calls dogs 'man's best friend' has some truth to it. After all, dogs are among the earliest pets that mankind had domesticated way before recorded history. In their honor and your furry life-style, below are some quotes about rescue dogs, and a dog quote collection in general.", image_url: "https://media.kidadl.com/600f84f2f7068970979d68aa-close-to-65-of-animal-abuse-cases-are-dogs.jpeg", age: "2 year", sex: "female", species: "dog", adopter_id: u5.id, admin_id: u1.id, name: "pompy", status: "approved")

a2 = Animal.create!(breed: "mix", description: "This cute little is finding a home. His name is bunny and i bet you whoever adopt him will love him as their son", image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/close-up-portrait-of-dog-royalty-free-image-1577697658.jpg", age: " 3 years", sex: "male", species: "dog", adopter_id: u6.id, admin_id: u2.id, name: "bunny", status: "pending")

a3 = Animal.create!(breed: "mix", description: "Before you get a dog, you can't quite imagine what living with one might be like; afterward, you cant imagine living any other way.", image_url: "https://www.azquotes.com/image-quotes/Quotation-Johnny-Depp-The-only-creatures-that-are-evolved-enough-to-convey-pure-7-64-02.jpg", age: "47 months", sex: "male", species: "dog", adopter_id: u7.id, admin_id: u3.id, name: "simba", status: "approved")

a4 = Animal.create!(breed: "mix", description: "Such short little lives our pets have to spend with us, and they spend most of it waiting for us to come home each day.”", image_url: "https://i.ytimg.com/vi/ze4w1xrm8UI/maxresdefault.jpg", age: " 18 months", sex: "female", species: "dog", adopter_id: u6.id, admin_id: u2.id, name: "bruzo", status: "pending")

a5 = Animal.create!(breed: "mix", description: "Dogs never talk about themselves but listen to you while you talk about yourself, and keep up an appearance of being interested in the conversation.", image_url: "https://www.thesprucepets.com/thmb/W5BpZok9D4ORGN7Ept5LEOssCvo=/2119x1414/filters:no_upscale():max_bytes(150000):strip_icc()/FrenchBulldogGettyKurtPas1-bd2d994356154273b05c9ca57d21523e.jpg", age: "14 months", sex: "male", species: "dog", adopter_id: u7.id, admin_id: u1.id, name: "lolo", status: "pending")

a6 = Animal.create!(breed: "mix", description: "I believe cats to be spirits come to earth. A cat, I am sure, could walk on a cloud without coming through", image_url: "https://media.kidadl.com/600f8528b0c66b5e2a888303-animal-shelters-are-sometimes-compelled-to-put-the-strays-down-largely-due-to-lack-of-space.jpeg.webp", age: "4 year", sex: "female", species: "cat", adopter_id: u7.id, admin_id: u2.id, name: "navy", status: "approved")

a7 = Animal.create!(breed: "mix", description: "Every stray deserves a chance at love, a home and a warm bed to sleep at night", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQywn9xcNx_W6Swzf6B7i1_sj6d9cNUCPztUQ&usqp=CAU", age: "3 years", sex: "female", species: "cow", adopter_id: u7.id, admin_id: u3.id, name: "patty", status: "approved")

puts "created #{Animal.count} animals:"

print "Creating donations..."
Donation.destroy_all

d1 = Donation.create!(user_id: "u5.id", amount: 30)
d2 = Donation.create!(user_id: "u6.id", amount: 50)
d3 = Donation.create!(user_id: "u7.id", amount: 40)

puts "created #{Donation.count} donations:"
