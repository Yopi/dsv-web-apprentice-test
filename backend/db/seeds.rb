# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pizzerias = Pizzeria.create([
	{
		name: "Åby grill och pizzeria",
	    city: "Åby",
		address: "Katrineholmsvägen 22, 61622",
		telephone: "+461160184",
		},
	{
	    name: "Pizzeria Golden West",
	    telephone: "+46854088205",
	    city: "Åkersberga",
	    address: "Storängstorget 39, 18430"
    }
])

menu_items_pizzeria1 = MenuItem.create([
    { pizzeria_id: 1, title: "Margherita", ingredients: "Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Vesuvio", ingredients: "Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Fungi", ingredients: "Champinjoner, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Bussola", ingredients: "Räkor, Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Capricciosa", ingredients: "Champinjoner, Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Pazza", ingredients: "Lök, Champinjoner, Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Nobel", ingredients: "Räkor, Champinjoner, Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Hawaii", ingredients: "Ananas, Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Mamma Mia", ingredients: "Ananas, Champinjoner, Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Miami", ingredients: "Ananas, Räkor, Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Africana", ingredients: "Curry, Banan, Ananas, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Vegetaria", ingredients: "Oliver, Sparris, Paprika (färsk), Lök, Champinjoner, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Salerno", ingredients: "Tonfisk, Räkor, Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Pescatore", ingredients: "Tonfisk, Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Romana", ingredients: "Bacon, Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Salami", ingredients: "Salami, Paprika (färsk), Lök, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Bari", ingredients: "Salami, Räkor, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Hot hot", ingredients: "Cayennepeppar, Tomater (färska), Köttfärs, Lök, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Bolognese", ingredients: "Köttfärs, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Tutti Frutti", ingredients: "Curry, Banan, Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Calzone", ingredients: "Skinka, Ost, Tomatsås", price: 75, food_type: "Ordinare Pizzor" },
    { pizzeria_id: 1, title: "Hellas", ingredients: "Fetaost, Tomater (färska), Oliver, Lök, Skinka, Ost, Tomatsås", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Quattro", ingredients: "Tomatsås, Ost, Skinka, Räkor, Champinjoner, Musslor", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Black & White", ingredients: "Bearnaisesås, Fläskfilé, Oxfilé, Ost, Tomatsås", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Kycklingpizza", ingredients: "Kebabsås mild, Kyckling, Tomater (färska), Ost, Tomatsås", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Gourmetpizza", ingredients: "Feferoni, Oxfilé, Tomater (färska), Lök, Ost, Tomatsås", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Åby", ingredients: "Bearnaisesås, Fläskfilé, Lök, Champinjoner, Skinka, Ost, Tomatsås", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Samuel", ingredients: "Bearnaisesås, Oxfilé, Sparris, Räkor, Ost, Tomatsås", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Havspizza", ingredients: "Crabfish, Musslor, Tonfisk, Räkor, Ost, Tomatsås", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Ramzi", ingredients: "Kebabsås mild, Kyckling, Bearnaisesås, Oxfilé, Ost, Tomatsås", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Stefan", ingredients: "Kebabkött (nötkött), Kebabsås mild, Bearnaisesås, Oxfilé, Ost, Tomatsås", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Kantarellpizza", ingredients: "Vitlök (färsk), Kantareller, Bearnaisesås, Fläskfilé, Tomater (färska), Lök, Ost, Tomatsås", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Gorgonzola", ingredients: "Gorgonzolaost, Oxfilé, Ost, Tomatsås", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Ostpizza", ingredients: "Mozzarellaost, Gorgonzolaost, Fetaost, Salami, Ost, Tomatsås", price: 85, food_type: "Specialpizzor" },
    { pizzeria_id: 1, title: "Speedway", ingredients: "Isbergssallad, Gurka, Pommes frites, Kebabsås mild, Tomater (färska), Lök, Ost, Tomatsås", price: 95, food_type: "Lyxspecialpizzor" },
    { pizzeria_id: 1, title: "Tomas", ingredients: "Mozzarellaost, Vitlök (färsk), Bearnaisesås, Oxfilé, Tomater (färska), Paprika (färsk), Champinjoner, Ost, Tomatsås", price: 95, food_type: "Lyxspecialpizzor" },
    { pizzeria_id: 1, title: "Viagra", ingredients: "Kebabkött (fläskkarré), Kebabsås mild, Kyckling, Bearnaisesås, Fläskfilé, Oxfilé, Ost, Tomatsås", price: 95, food_type: "Lyxspecialpizzor" },
    { pizzeria_id: 1, title: "Italiano", ingredients: "Mozzarellaost, Kantareller, Bearnaisesås, Fläskfilé, Oxfilé, Tomater (färska), Paprika (färsk), Ost, Tomatsås", price: 95, food_type: "Lyxspecialpizzor" },
    { pizzeria_id: 1, title: "Azteca", ingredients: "Tacokryddmix, Tacosås, Jalapeños, Vitlök (färsk), Kebabsås mild, Köttfärs, Lök, Champinjoner, Ost, Tomatsås", price: 95, food_type: "Lyxspecialpizzor" },
    { pizzeria_id: 1, title: "Acapulco", ingredients: "Tacokryddmix, Jalapeños, Vitlök (färsk), Oxfilé, Tomater (färska), Köttfärs, Paprika (färsk), Ost, Tomatsås", price: 95, food_type: "Lyxspecialpizzor" },
    { pizzeria_id: 1, title: "Husets", ingredients: "Pommes frites, Kebabkött (nötkött), Kebabsås mild, Ost, Tomatsås", price: 90, food_type: "Kebabpizzor" },
    { pizzeria_id: 1, title: "Pippi", ingredients: "Pommes frites, Kebabkött (nötkött), Kebabsås mild, Ananas, Lök, Ost, Tomatsås", price: 90, food_type: "Kebabpizzor" },
    { pizzeria_id: 1, title: "Kebab Gyros", ingredients: "Kebabkött (fläskkarré), Kebabkött (nötkött), Kebabsås mild, Lök, Champinjoner, Ost, Tomatsås", price: 90, food_type: "Kebabpizzor" },
    { pizzeria_id: 1, title: "Sverige", ingredients: "Kebabkött (nötkött), Kebabsås mild, Skinka, Ost, Tomatsås", price: 90, food_type: "Kebabpizzor" },
    { pizzeria_id: 1, title: "Eddie", ingredients: "Isbergssallad, Kebabkött (nötkött), Kebabsås mild, Tomater (färska), Lök, Ost, Tomatsås", price: 90, food_type: "Kebabpizzor" },
    { pizzeria_id: 1, title: "Viking", ingredients: "Isbergssallad, Gurka, Kebabkött (nötkött), Feferoni, Kebabsås mild, Tomater (färska), Lök, Ost, Tomatsås", price: 90, food_type: "Kebabpizzor" }
])

menu_items_pizzeria2 = MenuItem.create([
    {
        pizzeria_id: 2,
        title: "Margherita",
        ingredients: "Tomatsås, Ost",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Vesuvio",
        ingredients: "Tomatsås, Ost, Skinka",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Funghi",
        ingredients: "Tomatsås, Ost, Champinjoner",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Capricciosa",
        ingredients: "Tomatsås, Ost, Skinka, Champinjoner",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Bussola",
        ingredients: "Tomatsås, Ost, Skinka, Räkor",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Hawaii",
        ingredients: "Tomatsås, Ost, Skinka, Ananas",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Opera",
        ingredients: "Tomatsås, Ost, Skinka, Tonfisk",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Marinara",
        ingredients: "Tomatsås, Ost, Räkor, Musslor",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Orientale",
        ingredients: "Tomatsås, Ost, Köttfärs, Lök",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Pompei",
        ingredients: "Tomatsås, Ost, Bacon, Ägg, Lök",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Cacciatore",
        ingredients: "Tomatsås, Ost, Salami, Oliver",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Pepperoni",
        ingredients: "Tomatsås, Ost, Salami, Oliver, Feferoni",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Maestro",
        ingredients: "Tomatsås, Ost, Skinka, Ägg, Lök, Paprika",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Sole mio",
        ingredients: "Tomatsås, Ost, Salami, Bacon, Tabasco",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Havanna",
        ingredients: "Tomatsås, Ost, Skinka, Curry, Banan",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Elins",
        ingredients: "Tomatsås, Ost, Räkor, Champinjoner",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Napolitana",
        ingredients: "Tomatsås, Ost, Sardeller, Oliver",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Vegetarisk",
        ingredients: "Tomatsås, Ost, Champinjoner, Lök, Oliver, Kronärtskocka, Paprika",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Amore",
        ingredients: "Tomatsås, Ost, Ananas, Champinjoner",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Banana",
        ingredients: "Tomatsås, Ost, Ananas, Curry, Banan",
        price: 80,
       	food_type: "Pizzor Klass I"
    },
    {
        pizzeria_id: 2,
        title: "Quattro",
        ingredients: "Tomatsås, Ost, Skinka, Räkor, Champinjoner, Musslor, Oliver, Kronärtskocka",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Husets",
        ingredients: "Tomatsås, Ost, Skinka, Salami, Champinjoner, Oliver, Paprika",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Dolce vita",
        ingredients: "Tomatsås, Ost, Skinka, Räkor, Champinjoner",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Prinsessa",
        ingredients: "Tomatsås, Ost, Skinka, Räkor, Ananas",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Fårostpizza",
        ingredients: "Tomatsås, Ost, Salami, Lök, Oliver, Fårost, Paprika",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Gorgonzola",
        ingredients: "Tomatsås, Ost, Skinka, Gorgonzolaost",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Kyckling",
        ingredients: "Tomatsås, Ost, Kyckling, Ananas, Curry, Banan",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Indiana",
        ingredients: "Tomatsås, Ost, Kyckling, Ananas, Tacosås, Oliver, Paprika",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Golf",
        ingredients: "Tomatsås, Ost, Tonfisk, Champinjoner, Tacosås, Oliver, Paprika",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Bella mari",
        ingredients: "Ost (gratinerad), Tomatsås, Skinka, Räkor, Champinjoner, Lök, Paprika",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Ekens",
        ingredients: "Tomatsås, Ost, Köttfärssås, Räkor, Gorgonzolaost",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Florida",
        ingredients: "Tomatsås, Ost, Skinka, Ananas, Curry, Banan",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Ortolana",
        ingredients: "Tomatsås, Ost, Tomater (färska), Oliver, Purjolök, Aubergine, Zucchini, Paprika (grillad)",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Jamaica",
        ingredients: "Tomatsås, Ost, Räkor, Vitlök, Purjolök",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Rimini",
        ingredients: "Tomatsås, Ost, Räkor, Vitlök, Persilja",
        price: 90,
        food_type: "Pizzor Klass II"
    },
    {
        pizzeria_id: 2,
        title: "Calzone",
        ingredients: "Tomatsås, Ost, Skinka",
        price: 80,
        food_type: "Inbakade pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Calzone special",
        ingredients: "Tomatsås, Ost, Skinka, Räkor, Champinjoner",
        price: 90,
        food_type: "Inbakade pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Tefat",
        ingredients: "Tomatsås, Ost, Skinka, Räkor, Champinjoner",
        price: 105,
        food_type: "Inbakade pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Ubåt",
        ingredients: "Tomatsås, Ost, Fläskfilé, Champinjoner, Bearnaisesås, Paprika",
        price: 105,
        food_type: "Inbakade pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Gyrospizza",
        ingredients: "Tomatsås, Ost, Champinjoner, Tomater (färska), Lök, Kebabkött (fläskkarré), Jalapeños",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Berga special",
        ingredients: "Tomatsås, Ost, Fläskfilé, Champinjoner (färska), Bearnaisesås, Tomater (färska), Lök",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Väktarens",
        ingredients: "Tomatsås, Ost, Fläskfilé, Bearnaisesås, Paprika (färsk), Tomater (färska), Lök, Jalapeños, Tacokryddmix",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Bari",
        ingredients: "Tomatsås, Ost, Oxfilé, Champinjoner (färska), Bearnaisesås, Tomater (färska), Gorgonzolaost, Tacokryddmix",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Viking",
        ingredients: "Tomatsås, Ost, Oxfilé, Champinjoner (färska), Bearnaisesås, Curry, Banan",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Merhaba",
        ingredients: "Tomatsås, Ost, Oxfilé, Bearnaisesås, Lök, Kronärtskocka",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Oxfilé",
        ingredients: "Tomatsås, Ost, Champinjoner, Bearnaisesås, Tomater (färska), Paprika",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Stark pizza",
        ingredients: "Tomatsås, Ost, Skinka, Salami, Svartpeppar, Jalapeños, Tacokryddmix",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Golden West",
        ingredients: "Tomatsås, Ost, Salami, Bacon, Champinjoner, Bearnaisesås",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Juventus",
        ingredients: "Tomatsås, Ost, Oxfilé, Bearnaisesås, Lök",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Mixed special",
        ingredients: "Tomatsås, Ost, Oxfilé, Fläskfilé, Champinjoner, Bearnaisesås",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Fodi",
        ingredients: "Tomatsås, Ost, Skinka, Fläskfilé, Räkor, Curry, Banan",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Ibolina",
        ingredients: "Tomatsås, Ost, Champinjoner (färska), Paprika (färsk), Tomater (färska), Lök, Oliver, Svartpeppar, Vitlök, Räkor (chilimarinerade)",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Orientale special",
        ingredients: "Tomatsås, Ost, Köttfärs, Champinjoner (färska), Tabasco, Lök, Vitlök, Paprika",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Urban",
        ingredients: "Tomatsås, Ost, Fläskfilé, Champinjoner (färska), Bearnaisesås, Paprika (färsk), Purjolök",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Oscar",
        ingredients: "Tomatsås, Ost, Fläskfilé, Ananas, Curry, Kronärtskocka, Banan",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "La favorita",
        ingredients: "Tomatsås, Ost, Räkor, Tomater (soltorkade), Vitlök, Paprika (grillad), Persilja",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Den gode",
        ingredients: "Tomatsås, Ost, Rostbiff, Champinjoner (färska), Bearnaisesås, Ruccolasallad",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Den onde",
        ingredients: "Tomatsås, Ost, Rostbiff, Bearnaisesås, Paprika (färsk), Lök, Jalapeños",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Bagarens special",
        ingredients: "Tomatsås, Ost, Rostbiff, Vitlökssås, Tomater (färska), Lök, Isbergssallad",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Mälarens",
        ingredients: "Tomatsås, Ost, Räkor, Ananas, Champinjoner (färska), Curry, Banan",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Mamma mia",
        ingredients: "Tomatsås, Ost, Salami, Köttfärs, Paprika (färsk), Tomater (färska), Lök",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Hasses special",
        ingredients: "Tomatsås, Ost, Salami, Köttfärs, Bacon, Lök, Oliver",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Spenatpizza",
        ingredients: "Tomatsås, Ost, Köttfärs, Lök, Fårost, Spenat",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Runö special",
        ingredients: "Tomatsås, Ost, Tonfisk, Räkor, Musslor, Kronärtskocka",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Zlatan",
        ingredients: "Tomatsås, Ost, Oxfilé, Bacon, Bearnaisesås, Kebabkött (nötkött)",
        price: 105,
        food_type: "Specialpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Kebabbåt",
        ingredients: "Tomatsås, Ost, Kebabsås blandad, Tomater (färska), Lök, Feferoni, Kebabkött (nötkött), Isbergssallad",
        price: 105,
        food_type: "Kebabpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Kebabpizza",
        ingredients: "Tomatsås, Ost, Kebabsås blandad, Tomater (färska), Lök, Feferoni, Kebabkött (nötkött)",
        price: 95,
        food_type: "Kebabpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Amigo",
        ingredients: "Tomatsås, Ost, Kebabsås blandad, Tomater (färska), Gurka, Lök, Feferoni, Kebabkött (nötkött), Isbergssallad",
        price: 105,
        food_type: "Kebabpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Kycklingkebab",
        ingredients: "Tomatsås, Ost, Kebabsås blandad, Tomater (färska), Gurka, Lök, Feferoni, Isbergssallad, Kebabkött (kyckling)",
        price: 105,
        food_type: "Kebabpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Del sole",
        ingredients: "Tomatsås, Ost, Kebabsås blandad, Tomater (färska), Gurka, Lök, Feferoni, Kebabkött (nötkött), Isbergssallad",
        price: 105,
        food_type: "Kebabpizzor"
    },
    {
        pizzeria_id: 2,
        title: "Leonardo",
        ingredients: "Tomatsås, Parmaskinka, Champinjoner (färska), Ruccolasallad, Mozzarellaost, Parmesanost",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Mozzarella",
        ingredients: "Tomatsås, Salami, Champinjoner (färska), Oliver, Mozzarellaost, Tomater (soltorkade), Paprika, Pesto",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Pasena",
        ingredients: "Tomatsås, Salami, Parmaskinka, Champinjoner, Mozzarellaost, Pesto, Basilika",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Parma",
        ingredients: "Tomatsås, Parmaskinka, Ruccolasallad, Mozzarellaost, Tomater (soltorkade)",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Mezza luna",
        ingredients: "Ena halvan inbakad med tomatsås, mozzarellaost, skinka och den andra delen utbakad med tomater (färska), mozzarellaost, parmaskinka och ruccolasallad.",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Crudo",
        ingredients: "Tomatsås, Tzatzikisås, Oliver, Mozzarellaost, Broccoli, Paprika (grillad), Aubergine (grillad)",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Al caprese",
        ingredients: "Tomatsås, Oliver, Ruccolasallad, Mozzarellaost, Tomater (soltorkade), Avokado",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Cozze",
        ingredients: "Tomatsås, Tzatzikisås, Oliver, Mozzarellaost, Broccoli, Paprika (grillad), Aubergine (grillad)",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Brezzaola",
        ingredients: "Tomatsås, Bresaola, Champinjoner (färska), Oliver, Ruccolasallad, Mozzarellaost, Parmesanost",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Pizza pesto",
        ingredients: "Tomatsås, Oliver, Ruccolasallad, Mozzarellaost, Tomater (soltorkade), Pesto",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Pavarotti",
        ingredients: "Tomatsås, Kyckling, Fetaost, Mozzarellaost, Pinjenötter, Paprika",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Antipasta misto",
        ingredients: "Tomatsås, Parmaskinka, Ruccolasallad, Mozzarellaost, Salami (italiensk)",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Quattro formaggi",
        ingredients: "Tomatsås, Fårost, Ruccolasallad, Mozzarellaost, Gorgonzolaost",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Fantasy",
        ingredients: "Tomatsås, Skinka, Salami, Parmaskinka, Ruccolasallad, Mozzarellaost, Tomater (soltorkade), Purjolök",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Riviera",
        ingredients: "Tomatsås, Skinka, Parmaskinka, Ruccolasallad, Mozzarellaost",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Picante",
        ingredients: "Tomatsås, Fetaost, Mozzarellaost, Purjolök, Zucchini, Paprika (grillad), Aubergine (grillad)",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Grillad",
        ingredients: "Tomatsås, Oxfilé, Bresaola, Champinjoner, Ruccolasallad, Mozzarellaost, Tomater (soltorkade), Zucchini, Basilika, Aubergine (grillad), Vitlök (färsk)",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Al Pacino",
        ingredients: "Tomatsås, Bresaola, Ruccolasallad, Mozzarellaost, Pinjenötter, Parmesanost",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Prinos",
        ingredients: "Tomatsås, Bresaola, Mozzarellaost, Zucchini, Spenat, Parmesanost, Aubergine (grillad)",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Fettuccini",
        ingredients: "Tomatsås, Tzatzikisås, Oliver, Fårost, Ruccolasallad, Mozzarellaost, Tomater (soltorkade), Pesto, Paprika (grillad)",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Forno romano",
        ingredients: "Tomatsås, Bresaola, Champinjoner, Ruccolasallad, Mozzarellaost, Paprika, Vitlök (färsk)",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Verona",
        ingredients: "Tomatsås, Salami, Tzatzikisås, Oliver, Mozzarellaost, Spenat",
        price: 105,
        food_type: "Italienska Pizzor"
    },
    {
        pizzeria_id: 2,
        title: "Milano",
        ingredients: "Tomatsås, Fetaost, Tzatzikisås, Lök, Mozzarellaost, Tomater (soltorkade), Spenat",
        price: 105,
        food_type: "Italienska Pizzor"
    }
])