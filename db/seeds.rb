# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(login: 'fpoblete', email: 'ferpobletea@gmail.com', first_name: 'Fernando', last_name: 'Poblete', password: 'estaEsMyPassword')
User.create(login: 'scrumDayChile', email: 'scrumDayChile@scrum.com', first_name: 'Scrum', last_name: 'Day Chile', password: 'scrumDayChile')

Category.create(name: 'Articulos', description: 'Articulos de escritorio y para dinamicas de equipo')
Category.create(name: 'Libros', description: 'Libros sobre temas de Agilidad')
Category.create(name: 'Poleras', description: 'Poleras con mensajes y dibujos agiles')

articles_category_id = Category.find_by_name("Articulos").id
books_category_id = Category.find_by_name("Libros").id
t_shirts_category_id = Category.find_by_name("Poleras").id

Product.create(name: 'Scrum Post Its', price: 1200, stock: 0, category_id: articles_category_id,
	description: 'Imprescindible para cualquier Planning, Grooming, Retrospectiva, con pegamento ultra sticky')

Product.create(name: 'Scrum Quick Reference', price: 10000, stock: 20, category_id: books_category_id,
	description: 'Compilado con ayuda memoria para los principales conceptos de Scrum')

Product.create(name: 'Planning Poker Cards', price: 3000, stock: 50, category_id: articles_category_id,
	description: 'Cartas para jugar al Planning Poker')

Product.create(name: 'Magnetic White Board', price: 8000, stock: 30, category_id: articles_category_id,
	description: 'Empower your daily meetings!')

