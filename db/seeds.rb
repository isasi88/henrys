# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

services = Service.create([
	{name: "Branding", description: "Lorem Ipsum", slogan: "Esto es un slogan"},
	{name: "Cartelería Digital", description: "Lorem Ipsum", slogan: "Esto es un slogan"},
	{name: "Packaging", description: "Lorem Ipsum", slogan: "Esto es un slogan"},
	{name: "Plataformas Web", description: "Lorem Ipsum", slogan: "Esto es un slogan"},
	{name: "Branding", description: "Lorem Ipsum", slogan: "Esto es un slogan"},
	{name: "Branding", description: "Lorem Ipsum", slogan: "Esto es un slogan"},
	{name: "Branding", description: "Lorem Ipsum", slogan: "Esto es un slogan"}
	])
works = Work.create([
	{title: "Sushi Artist", brief: "Lorem ipsum", cover: "te.png"},
	{title: "Sushi Artist", brief: "Lorem ipsum", cover: "te.png"},
	{title: "Sushi Artist", brief: "Lorem ipsum", cover: "te.png"},
	{title: "Sushi Artist", brief: "Lorem ipsum", cover: "te.png"},
	{title: "Sushi Artist", brief: "Lorem ipsum", cover: "te.png"},
	{title: "Sushi Artist", brief: "Lorem ipsum", cover: "te.png"},
	{title: "Sushi Artist", brief: "Lorem ipsum", cover: "te.png"},
	{title: "Sushi Artist", brief: "Lorem ipsum", cover: "te.png"},
	{title: "Sushi Artist", brief: "Lorem ipsum", cover: "te.png"},
	{title: "Sushi Artist", brief: "Lorem ipsum", cover: "te.png"},
	{title: "Sushi Artist", brief: "Lorem ipsum"}])
