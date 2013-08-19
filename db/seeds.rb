# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Quote.destroy_all

Quote.create({
	content: "Sweet Clyde, use variatonal parameters, and expand the Wronskian.",
	true_votes: 18,
	false_votes: 2
})

Quote.create({
	content: "And as the candy hearts poured into the fiery quasar, a wondrous thing
	happened, why not. They vaporized into a mystical love radiation that spread
	across the universe, destroying many, many planets, including two gangster planets
	and a cowboy world. But one planet was exactly the right distance to see the
	romantic rays but not be destroyed by them: Earth. So all over the world couples
	stood together in joy. And me, Zoidberg. And no one could have been happier unless
	it would have also been Valentine's Day. What? It was? Hooray!",
	true_votes: 32,
	false_votes: 1
})


User.create({
	name_first: "John",
	name_last: "Zoidberg",
	email: "zoidberg@whynotzoidberg.com",
	current_city: "New New York",
	born_on: "2900-08-05",
	current_company: {
		company_name: "Planet Express",
		title: "Medical Crab"
	},
	family: {
		uncle: "Harold Zoid"
	},
	profile_picture: "http://pool.theinfosphere.org/images/7/79/Zoidberg_promo.png",
	quote_ids: [Quote.all[1]._id]
})

User.create({
	name_first: "Morbo",
	name_last: "The Annihilator",
	email: "morbo@roottwonews.com",
	current_city: "New New York",
	born_on: "2950-07-30",
	current_company: {
		company_name: "Root2 News",
		title: "News Anchor"
	},
	family: {
		wife: "Mrs. Morbo"
	},
	profile_picture: "http://theroyalrating.files.wordpress.com/2012/09/morbo-31.jpg"
})

User.create({
	name_first: "Ethan",
	name_last: "Bubblegum Tate",
	email: "Ethantate@globetrotteru.com",
	current_city: "Globetrotter Homeworld",
	born_on: "2963-01-12",
	current_company: {
		company_name: "Globetrotter U",
		title: "Downtown Professor of Applied Physics"
	},
	schools: {
		school_name: "Globetrotter U",
		major: "Mathematics"
	},
	profile_picture: "http://oyster.ignimgs.com/mediawiki/apis.ign.com/futurama/c/c3/Bubbble.JPG",
	quote_ids: [Quote.first._id]
})





