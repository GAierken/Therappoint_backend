
puts "Destroy former seeds"
User.destroy_all
Appointment.destroy_all

puts "Making new seed"

clients=[
    { 
      first_name: "Gulgina",
      last_name: "Arkin",
      password: "1234",
      username: "gena",
      address: "81 Prospect Street, Brooklyn NY",
      email: "gena@123.com",
      phone_number: "3334451111",
      img_url: "https://uberhumor.com/wp-content/uploads/2019/07/xjkwe7eyqda31.png"
     
    }, 
    { 
      first_name: "Kayser",
      last_name: "Mahmut",
      password: "1234",
      username: "kayser",
      address: "7101 13th Ave, Brooklyn NY",
      email: "kayser@123.com",
      phone_number: "444-445-1111",
      img_url: "https://media.golfdigest.com/photos/55e9b890b91019d74c99902c/master/pass/Colin-Jost-Interview-2.jpg"
     
  }
]

providers=[
    {
      first_name: "Dariusz",
      last_name: "Jarzabkowski",
      password: "1234",
      username: "dariusz",
      email: "da@123.com",
      phone_number: "1112223333",
      img_url: "https://nyulangone.org/images/doctors/j/jarzabkowski/1992046973/dariusz-jarzabkowski-thumb.jpg",
      specialty: "Physical Therapy",
      board_certified: true
      
    },
    {
        first_name: "Michael",
        last_name: "Lasak",
        password: "1234",
        username: "michael",
        email: "mi@123.com",
        phone_number: "222333444",
        img_url: "https://nyulangone.org/images/doctors/l/lasak/1710395017/michael-lasak-thumb.jpg",
        specialty: "Physical Therapy ",
        board_certified: true
        
      },
      {
        first_name: "Yamalis",
        last_name: "Diaz",
        password: "1234",
        username: "yamalis",
        email: "ya@123.com",
        phone_number: "3334445555",
        img_url: "https://nyulangone.org/images/doctors/d/diaz/1548685290/yamalis-diaz-thumb.jpg",
        specialty: "Behavior Therapy",
        board_certified: true
        
      },
      {
        first_name: "Dylann",
        last_name: "Gold",
        password: "1234",
        username: "dylann",
        email: "dy@123.com",
        phone_number: "3334445555",
        img_url: "https://nyulangone.org/images/doctors/g/gold/1053652784/dylann-gold-thumb.jpg",
        specialty: "Behavior Therapy",
        board_certified: true
        
      }

      

]
puts "Creating clients"

User.create!(clients)

puts "Creating providers"
User.create!(providers)

puts "Creating Appointments"
Appointment.create!(client: User.first, provider: User.last)
# Appointment.create!(client: User.find_by(client_id: 1), provider: User.find_by(provider_id: 2))
# Appointment.create!(client: User.find_by(client_id: 2), provider: User.find_by(provider_id: 3))
# Appointment.create!(client: User.find_by(client_id: 2), provider: User.find_by(provider_id: 4))


puts "Done"