c = User.create(name: "colin", zipcode: 10031)
j = User.create(name: "joe", zipcode: 11206)

duff = Beer.create(name:"Duff Beer",brewery:"Springfield Brewery",style:"ale",abv:4.7)

Rating.create(user: c,rating:3.2,beer: duff)
