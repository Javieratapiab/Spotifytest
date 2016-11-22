# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Song.destroy_all
Genre.destroy_all

Genre.create([
	{name: 'Rock'},
	{name: 'Jazz'},
	{name: 'Indie'},
	{name: 'Pop'},
	{name: 'Fiesta'},
	{name: 'Experimental'},
	{name: 'Latin'},
	{name: 'Country'}
	])

User.create([
	{name: 'Pancracia', email: 'pancracia@gmail.com', password: '123456', role: 'admin'},
	{name: 'Ruperta', email: 'ruperta@gmail.com', password: '678912'},
	{name: 'Filomena', email: 'filomena@gmail.com', password: '345678'},
	{name: 'Heriberto', email: 'heriberto@gmail.com', password: '912345'},
	{name: 'Robertina', email: 'robertina@gmail.com', password: '678712'},
	{name: 'Fido Dido', email: 'fidodido@gmail.com', password: '345625', role: 'admin'}
	])

Song.create([
	{name: 'Lotus flower', genre_id:Genre.find_by(name:'Experimental').id, duration: 3},
	{name: 'Stairway to heaven',genre_id:Genre.find_by(name:'Rock').id, duration: 2},
	{name: 'Rabiosa', genre_id:Genre.find_by(name:'Latin').id, duration: 5},
	{name: 'Georgia', genre_id:Genre.find_by(name:'Jazz').id, duration: 6},
	{name: 'I met a girl', genre_id:Genre.find_by(name:'Country').id, duration:4},
	{name: 'Sorry', genre_id:Genre.find_by(name:'Pop').id, duration: 3},
	{name: 'Hotline bling', genre_id:Genre.find_by(name:'Pop').id, duration: 2},
	{name: 'Burbujas de amor', genre_id:Genre.find_by(name:'Latin').id, duration: 5},
	{name: 'The greatest', genre_id:Genre.find_by(name:'Indie').id, duration: 4}
	])

UserSong.create([
	{song:Song.find_by(name:'Georgia'), user: User.first},
	{song:Song.find_by(name:'Rabiosa'), user: User.last},
	{song:Song.find_by(name:'Stairway to heaven'), user: User.first},
	{song:Song.find_by(name:'I met a girl'), user: User.first},
	{song:Song.find_by(name:'Sorry'), user: User.last},
	{song:Song.find_by(name:'Lotus flower'), user: User.first},
	])
	
