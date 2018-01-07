### Swedish
# Vad är det här?
En simpel klon av onlinepizza.se. Använder sig av [Ruby on Rails](http://rubyonrails.org) som JSON-API/backend och Vue.js](http://vuejs.org) som frontendramverk.

# Förklaring
Hemsidan låter dig att registrera ett konto och fylla i dina adressuppgifter. Sedan listar den pizzerior som den tillåter dig att beställa från. Alla beställningar lagras i databasen.

# Teknisk Förklaring
## Frontend
Frontenden använder sig av [Vue.js](http://vuejs.org). Huvuddelen av koden är uppdelad i olika Vue-moduler. Dessa finns i `frontend/src/components/`. Routes för frontenden finns i `frontend/src/router/index.js`. Layouten finns i `frontend/src/App.vue`. Vue-modulerna innehåller både CSS, HTML och Javascript. Till skillnad från att klassiskt dela upp hela hemsidan i tre delar (CSS, HTML och Javascript) så är dessa grupperade efter syfte. All kod som har att göra med varandra finns i samma komponent. CSSen blir automatiskt scopead till den komponenten, det går därför att inte få konflikter mellan olika regler, och man kan därmed vara mindre explicit/hård i sin CSS. T.ex. behöver man inte IDn och klasser på alla element om man vet att det enbart finns en av en viss typ av HTML-element så kan man direkt skriva CSS för det elementet.

## Backend
Backenden använder sig av [Ruby on Rails](http://rubyonrails.org) och är skriven enligt M(V)C-struktur. Koden finns därför huvudsakligen i `backend/app/controllers/` och `backend/app/models/`. Den har inga direkta vyer, då dessa rendreras och skapas av frontenden. Databasstrukturen är uppbyggd av ett gäng migrationer. Schemat går att läsa i `backend/app/schema.rb`. Routes för backenden finns i `backend/config/routes.rb`. Backenden sköter authentikation och varje route svarar med JSON direkt i controllern.


# Dependencies
Backendservern kräver ruby, förmodligen över version 2.2.2. Rekommenderat att installera `chruby` och `ruby-install`.
Frontendservern kräver node.js och npm, helst över version 3.0.

# Hur använder jag det?
För att starta den så gör du enkelt nog:
`$ cd backend`
`$ bundle install`
`$ rake db:create`
`$ rake db:migrate`
`$ rake db:seed`
`$ rails s`

Sedan startar du frontendservern genom:
`$ cd frontend`
`$ npm install`
`$ npm run dev`
