README.md
=========================
by Mia Manalastas
last modified: 09/15/2013

This is an application for the Friends Share Recipes! website.

Pages implemented:
=========================
1) Home
2) Profile
3) Recipes
4) My Recipes
5) Add Recipe
6) Show Recipe

Tests created for:
=========================
1) Recipes controller (spec/controllers/recipes_controller_spec.rb)

File list:
=========================
Gemfile
Gemfile.lock
README.md
README.rdoc
Rakefile
config.ru

app:
assets
controllers
helpers
mailers
models
views

app/assets:
images
javascripts
stylesheets

app/assets/images:
rails.png

app/assets/javascripts:
application.js
homes.js.coffee
recipes.js.coffee

app/assets/stylesheets:
application.css
homes.css.scss
recipes.css.scss

app/controllers:
application_controller.rb
homes_controller.rb
recipes_controller.rb

app/helpers:
application_helper.rb
homes_helper.rb
recipes_helper.rb

app/mailers:

app/models:
home.rb
recipe.rb
user.rb

app/views:
devise
homes
layouts
recipes

app/views/devise:
confirmations
mailer
passwords
registrations
sessions
shared
unlocks

app/views/devise/confirmations:
new.html.erb

app/views/devise/mailer:
confirmation_instructions.html.erb
reset_password_instructions.html.erb
unlock_instructions.html.erb

app/views/devise/passwords:
edit.html.erb
new.html.erb

app/views/devise/registrations:
edit.html.erb
new.html.erb

app/views/devise/sessions:
new.html.erb

app/views/devise/shared:
_links.erb

app/views/devise/unlocks:
new.html.erb

app/views/homes:
index.html.erb

app/views/layouts:
application.html.erb

app/views/recipes:
edit.html.erb
index.html.erb
new.html.erb
show.html.erb

config:
application.rb
boot.rb
database.yml
environment.rb
environments
initializers
locales
routes.rb

config/environments:
development.rb
production.rb
test.rb

config/initializers:
backtrace_silencers.rb
devise.rb
inflections.rb
mime_types.rb
secret_token.rb
session_store.rb
wrap_parameters.rb

config/locales:
devise.en.yml
en.yml

db:
development.sqlite3
migrate
schema.rb
seeds.rb
test.sqlite3

db/migrate:
20130908054222_create_homes.rb
20130908060341_devise_create_users.rb
20130908062822_add_name.rb
20130908062956_add_name_to_users.rb
20130908063748_create_recipes.rb
20130908201717_add_user_id_to_users.rb
20130908201917_add_user_id_to_recipes.rb

doc:
README_FOR_APP

lib:
assets
tasks

lib/assets:

lib/tasks:

log:
development.log
test.log

public:
404.html
422.html
500.html
favicon.ico
robots.txt

script:
rails

spec:
controllers
spec_helper.rb
support

spec/controllers:
recipes_controller_spec.rb

spec/support:
controller_macros.rb

test:
fixtures
functional
integration
performance
test_helper.rb
unit

test/fixtures:
homes.yml
recipes.yml
users.yml

test/functional:
homes_controller_test.rb
recipes_controller_test.rb

test/integration:

test/performance:
browsing_test.rb

test/unit:
helpers
home_test.rb
recipe_test.rb
user_test.rb

test/unit/helpers:
homes_helper_test.rb
recipes_helper_test.rb

tmp:
cache
pids
sessions
sockets

tmp/cache: (file list truncated)
assets
sass
 :
homes.css.scssc
recipes.css.scssc

tmp/pids:

tmp/sessions:

tmp/sockets:

vendor:
assets
plugins

vendor/assets:
javascripts
stylesheets

vendor/assets/javascripts:

vendor/assets/stylesheets:

vendor/plugins: