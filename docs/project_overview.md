# Project Overview

## Project Tree

.
├── .dockerignore
├── .env
├── .gitattributes
├── .github
│   ├── dependabot.yml
│   └── workflows
│       └── ci.yml
├── .gitignore
├── .kamal
│   ├── hooks
│   │   ├── docker-setup.sample
│   │   ├── post-app-boot.sample
│   │   ├── post-deploy.sample
│   │   ├── post-proxy-reboot.sample
│   │   ├── pre-app-boot.sample
│   │   ├── pre-build.sample
│   │   ├── pre-connect.sample
│   │   ├── pre-deploy.sample
│   │   └── pre-proxy-reboot.sample
│   └── secrets
├── .rubocop.yml
├── .ruby-version
├── Dockerfile
├── Gemfile
├── Gemfile.lock
├── LICENSE
├── README.md
├── Rakefile
├── app
│   ├── admin
│   │   ├── admin_users.rb
│   │   ├── dashboard.rb
│   │   ├── product_calibers.rb
│   │   ├── products.rb
│   │   ├── recipe_ingredients.rb
│   │   ├── recipes.rb
│   │   ├── user_inventories.rb
│   │   ├── user_session.rb
│   │   └── users.rb
│   ├── assets
│   │   ├── config
│   │   │   └── manifest.js
│   │   ├── images
│   │   │   └── .keep
│   │   ├── javascripts
│   │   │   ├── active_admin.js
│   │   │   └── controllers
│   │   │       └── application.js
│   │   └── stylesheets
│   │       ├── active_admin.scss
│   │       └── application.css
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── concerns
│   │   │   └── .keep
│   │   ├── tasks_controller.rb
│   │   ├── telegram_controller.rb
│   │   └── vision_controller.rb
│   ├── helpers
│   │   ├── application_helper.rb
│   │   └── tasks_helper.rb
│   ├── javascript
│   │   ├── application.js
│   │   └── controllers
│   │       ├── application.js
│   │       ├── hello_controller.js
│   │       ├── index.js
│   │       └── scan_controller.js
│   ├── jobs
│   │   └── application_job.rb
│   ├── mailers
│   │   └── application_mailer.rb
│   ├── models
│   │   ├── admin_user.rb
│   │   ├── application_record.rb
│   │   ├── concerns
│   │   │   └── .keep
│   │   ├── product.rb
│   │   ├── product_caliber.rb
│   │   ├── recipe.rb
│   │   ├── recipe_ingredient.rb
│   │   ├── scan_item.rb
│   │   ├── user.rb
│   │   ├── user_inventory.rb
│   │   └── user_session.rb
│   ├── services
│   │   ├── food_analyzer_service.rb
│   │   ├── image_uploader_service.rb
│   │   └── recipe_recommender_service.rb
│   └── views
│       ├── layouts
│       │   ├── active_admin.html.erb
│       │   ├── application.html.erb
│       │   ├── mailer.html.erb
│       │   └── mailer.text.erb
│       ├── pwa
│       │   ├── manifest.json.erb
│       │   └── service-worker.js
│       ├── tasks
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   └── show.html.erb
│       └── vision
│           ├── _results.erb
│           ├── _scan_item.html.erb
│           └── new.html.erb
├── bin
│   ├── brakeman
│   ├── dev
│   ├── docker-entrypoint
│   ├── importmap
│   ├── jobs
│   ├── kamal
│   ├── rails
│   ├── rake
│   ├── rubocop
│   ├── setup
│   └── thrust
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── cable.yml
│   ├── cache.yml
│   ├── credentials.yml.enc
│   ├── database.yml
│   ├── deploy.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   └── test.rb
│   ├── importmap.rb
│   ├── initializers
│   │   ├── active_admin.rb
│   │   ├── assets.rb
│   │   ├── content_security_policy.rb
│   │   ├── devise.rb
│   │   ├── filter_parameter_logging.rb
│   │   └── inflections.rb
│   ├── locales
│   │   ├── devise.en.yml
│   │   └── en.yml
│   ├── master.key
│   ├── prompts
│   │   └── food_analyzer_prompt.rb
│   ├── puma.rb
│   ├── queue.yml
│   ├── recurring.yml
│   ├── routes.rb
│   └── storage.yml
├── config.ru
├── db
│   ├── cable_schema.rb
│   ├── cache_schema.rb
│   ├── migrate
│   │   ├── 20250910215357_create_tasks.rb
│   │   ├── 20251015164809_create_users.rb
│   │   ├── 20251015164829_create_products.rb
│   │   ├── 20251015164859_create_product_calibers.rb
│   │   ├── 20251015164913_create_recipes.rb
│   │   ├── 20251015164950_create_recipe_ingredients.rb
│   │   ├── 20251015165002_create_user_inventories.rb
│   │   ├── 20251015170301_devise_create_admin_users.rb
│   │   ├── 20251015170302_create_active_admin_comments.rb
│   │   ├── 20251016150303_add_instructions_to_recipes.rb
│   │   └── 20251016150332_create_user_sessions.rb
│   ├── queue_schema.rb
│   ├── schema.rb
│   ├── seeds
│   └── seeds.rb
├── docs
│   └── project_tree.txt
├── fridge.jpg
├── lib
│   └── tasks
│       └── .keep
├── project_tree.txt
├── public
│   ├── 400.html
│   ├── 404.html
│   ├── 406-unsupported-browser.html
│   ├── 422.html
│   ├── 500.html
│   ├── assets
│   │   ├── .sprockets-manifest-79d6a1f906b9b68b70454f64f36c0a31.json
│   │   ├── actioncable-323d156a10054ee2c94ba8a17c20458f542a17234f934ea53d16e0e1899fda5e.js
│   │   ├── actioncable-323d156a10054ee2c94ba8a17c20458f542a17234f934ea53d16e0e1899fda5e.js.gz
│   │   ├── actioncable.esm-b66d83871f0a453b10ba8b4c147c2bafa655caaa5d13fa34e9bf361c1c2aedb7.js
│   │   ├── actioncable.esm-b66d83871f0a453b10ba8b4c147c2bafa655caaa5d13fa34e9bf361c1c2aedb7.js.gz
│   │   ├── actiontext-0bc07717019da448e4a7abda9b2718ef0a4a8399bc1949280d76e308a795be6e.js
│   │   ├── actiontext-0bc07717019da448e4a7abda9b2718ef0a4a8399bc1949280d76e308a795be6e.js.gz
│   │   ├── actiontext.esm-8386a561a026b3cbe8b226bf99965ba3e0d76c7ac6c97ef80a5dfec240795708.js
│   │   ├── actiontext.esm-8386a561a026b3cbe8b226bf99965ba3e0d76c7ac6c97ef80a5dfec240795708.js.gz
│   │   ├── active_admin-2b46448a6df6dd748415a5a14b86431181801b7f841dd635dd439026fdbafe4d.scss
│   │   ├── active_admin-2b46448a6df6dd748415a5a14b86431181801b7f841dd635dd439026fdbafe4d.scss.gz
│   │   ├── active_admin-300e0a48f3c4474108af5afc10ff5c66dd393ae499a29f6cc2d93412f9b8f800.css
│   │   ├── active_admin-300e0a48f3c4474108af5afc10ff5c66dd393ae499a29f6cc2d93412f9b8f800.css.gz
│   │   ├── active_admin-752399317ef4825779fd528b8fc323d8cc6ba26dd93bd31194ec40971fffeccf.js
│   │   ├── active_admin-752399317ef4825779fd528b8fc323d8cc6ba26dd93bd31194ec40971fffeccf.js.gz
│   │   ├── activestorage-b739665c00c484e89aa1fbed0f6c6956e04e31da358a7661a16fea46775b3cc2.js
│   │   ├── activestorage-b739665c00c484e89aa1fbed0f6c6956e04e31da358a7661a16fea46775b3cc2.js.gz
│   │   ├── activestorage.esm-67701f2a2743709337889a5447ee87325b56054627c1b736725d69f247f79992.js
│   │   ├── activestorage.esm-67701f2a2743709337889a5447ee87325b56054627c1b736725d69f247f79992.js.gz
│   │   ├── application-37f365cbecf1fa2810a8303f4b6571676fa1f9c56c248528bc14ddb857531b95.js
│   │   ├── application-37f365cbecf1fa2810a8303f4b6571676fa1f9c56c248528bc14ddb857531b95.js.gz
│   │   ├── controllers
│   │   │   ├── application-368d98631bccbf2349e0d4f8269afb3fe9625118341966de054759d96ea86c7e.js
│   │   │   ├── application-368d98631bccbf2349e0d4f8269afb3fe9625118341966de054759d96ea86c7e.js.gz
│   │   │   ├── hello_controller-549135e8e7c683a538c3d6d517339ba470fcfb79d62f738a0a089ba41851a554.js
│   │   │   ├── hello_controller-549135e8e7c683a538c3d6d517339ba470fcfb79d62f738a0a089ba41851a554.js.gz
│   │   │   ├── index-31a9bee606cbc5cdb1593881f388bbf4c345bf693ea24e124f84b6d5c98ab648.js
│   │   │   ├── index-31a9bee606cbc5cdb1593881f388bbf4c345bf693ea24e124f84b6d5c98ab648.js.gz
│   │   │   ├── scan_controller-e580019f90a6dca600806942d8c478ab17383af08b2129c41c8ce214ef0a26ef.js
│   │   │   └── scan_controller-e580019f90a6dca600806942d8c478ab17383af08b2129c41c8ce214ef0a26ef.js.gz
│   │   ├── manifest-90aab26ade71e747f745b1227b433fd7d580a54f279ee2be6e1a67bb326bf03a.js
│   │   ├── manifest-90aab26ade71e747f745b1227b433fd7d580a54f279ee2be6e1a67bb326bf03a.js.gz
│   │   ├── stimulus-autoloader-c584942b568ba74879da31c7c3d51366737bacaf6fbae659383c0a5653685693.js
│   │   ├── stimulus-autoloader-c584942b568ba74879da31c7c3d51366737bacaf6fbae659383c0a5653685693.js.gz
│   │   ├── stimulus-f75215805563870a61ee9dc5a207ce46d4675c7e667558a54344fd1e7baa697f.js
│   │   ├── stimulus-f75215805563870a61ee9dc5a207ce46d4675c7e667558a54344fd1e7baa697f.js.gz
│   │   ├── stimulus-importmap-autoloader-db2076c783bf2dbee1226e2add52fef290b5d31b5bcd1edd999ac8a6dd31c44a.js
│   │   ├── stimulus-importmap-autoloader-db2076c783bf2dbee1226e2add52fef290b5d31b5bcd1edd999ac8a6dd31c44a.js.gz
│   │   ├── stimulus-loading-3576ce92b149ad5d6959438c6f291e2426c86df3b874c525b30faad51b0d96b3.js
│   │   ├── stimulus-loading-3576ce92b149ad5d6959438c6f291e2426c86df3b874c525b30faad51b0d96b3.js.gz
│   │   ├── stimulus.min-dd364f16ec9504dfb72672295637a1c8838773b01c0b441bd41008124c407894.js
│   │   ├── stimulus.min-dd364f16ec9504dfb72672295637a1c8838773b01c0b441bd41008124c407894.js.gz
│   │   ├── stimulus.min.js-2cc63625fa177963b45da974806e7aee846cbf1d4930815733d0fdf3fb232325.map
│   │   ├── stimulus.min.js-2cc63625fa177963b45da974806e7aee846cbf1d4930815733d0fdf3fb232325.map.gz
│   │   ├── trix-27b67936197943926cb14d19903e2a81f4ed2cb745aec0e8f198e70ddf292774.css
│   │   ├── trix-27b67936197943926cb14d19903e2a81f4ed2cb745aec0e8f198e70ddf292774.css.gz
│   │   ├── trix-7440030d033208cfbb65a8d2bb8ad8908099faa351e0cd3bcf9dc24b510c3a91.js
│   │   ├── trix-7440030d033208cfbb65a8d2bb8ad8908099faa351e0cd3bcf9dc24b510c3a91.js.gz
│   │   ├── turbo-c69e22a49dcb166659137ec1b5c5feddd68aaa75b2095acf4d013b1084c38d9b.js
│   │   ├── turbo-c69e22a49dcb166659137ec1b5c5feddd68aaa75b2095acf4d013b1084c38d9b.js.gz
│   │   ├── turbo.min-38d030897e3554a265d3a3b6bdf4fb7509b08197ba2b6e3761683c07e776c1bc.js
│   │   ├── turbo.min-38d030897e3554a265d3a3b6bdf4fb7509b08197ba2b6e3761683c07e776c1bc.js.gz
│   │   ├── turbo.min.js-c24bd7b6c8385de986e1594010354afea50ec32ff67eacee1ac1150f2ed08f8f.map
│   │   └── turbo.min.js-c24bd7b6c8385de986e1594010354afea50ec32ff67eacee1ac1150f2ed08f8f.map.gz
│   ├── icon.png
│   ├── icon.svg
│   └── robots.txt
├── script
│   └── .keep
└── test
    ├── application_system_test_case.rb
    ├── controllers
    │   ├── .keep
    │   └── tasks_controller_test.rb
    ├── fixtures
    │   ├── admin_users.yml
    │   ├── files
    │   │   └── .keep
    │   ├── product_calibers.yml
    │   ├── products.yml
    │   ├── recipe_ingredients.yml
    │   ├── recipes.yml
    │   ├── tasks.yml
    │   ├── user_inventories.yml
    │   ├── user_sessions.yml
    │   └── users.yml
    ├── helpers
    │   └── .keep
    ├── integration
    │   └── .keep
    ├── mailers
    │   └── .keep
    ├── models
    │   ├── .keep
    │   ├── admin_user_test.rb
    │   ├── product_caliber_test.rb
    │   ├── product_test.rb
    │   ├── recipe_ingredient_test.rb
    │   ├── recipe_test.rb
    │   ├── task_test.rb
    │   ├── user_inventory_test.rb
    │   ├── user_session_test.rb
    │   └── user_test.rb
    ├── system
    │   └── .keep
    └── test_helper.rb

53 directories, 229 files

## Gemfile

```
source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.2", ">= 8.0.2.1"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"
# Use sqlite3 as the database for Active Record
gem "sqlite3", ">= 2.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

gem "openai", "~> 0.23.2"
gem "image_processing"
gem "mini_magick"
gem 'dotenv-rails', groups: [:development, :test]
gem "telegram-bot-ruby"

gem 'activeadmin', '~> 3.3'
gem 'devise'       # для аутентификации админа
gem 'sassc-rails'   # для компиляции CSS
gem 'sprockets-rails'

gem "pg", "~> 1.5"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end
```

## README.md

```
<<<<<<< HEAD
# Havka
=======
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
>>>>>>> 52b15de (Initial commit)
```

## config/routes.rb

```
Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "vision#new"

  get  "vision/new",     to: "vision#new",     as: :new_vision
  post "vision/analyze", to: "vision#analyze", as: :analyze_vision
  post "/telegram/webhook" => "telegram#webhook"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  resources :tasks
end
```

## config/environments/development.rb

```
require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Make code changes take effect immediately without server restart.
  config.enable_reloading = true

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable server timing.
  config.server_timing = true

  config.hosts << "avalyn-audacious-lean.ngrok-free.dev"

  # Enable/disable Action Controller caching. By default Action Controller caching is disabled.
  # Run rails dev:cache to toggle Action Controller caching.
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true
    config.public_file_server.headers = { "cache-control" => "public, max-age=#{2.days.to_i}" }
  else
    config.action_controller.perform_caching = false
  end

  # Change to :null_store to avoid any caching.
  config.cache_store = :memory_store

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Make template changes take effect immediately.
  config.action_mailer.perform_caching = false

  # Set localhost to be used by links generated in mailer templates.
  config.action_mailer.default_url_options = { host: "localhost", port: 3000 }

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Append comments with runtime information tags to SQL queries in logs.
  config.active_record.query_log_tags_enabled = true

  # Highlight code that enqueued background job in logs.
  config.active_job.verbose_enqueue_logs = true

  # Raises error for missing translations.
  # config.i18n.raise_on_missing_translations = true

  # Annotate rendered view with file names.
  config.action_view.annotate_rendered_view_with_filenames = true

  # Uncomment if you wish to allow Action Cable access from any origin.
  # config.action_cable.disable_request_forgery_protection = true

  # Raise error when a before_action's only/except options reference missing actions.
  config.action_controller.raise_on_missing_callback_actions = true

  # Apply autocorrection by RuboCop to files generated by `bin/rails generate`.
  # config.generators.apply_rubocop_autocorrect_after_generate!
end
```

## config/database.yml

```
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

development:
  <<: *default
  host: <%= ENV['PG_HOST'] %>
  port: <%= ENV['PG_PORT'] %>
  username: <%= ENV['PG_USERNAME'] %>
  password: <%= ENV['PG_PASSWORD'] %>
  database: <%= ENV['PG_DATABASE'] %>

test:
  <<: *default
  host: <%= ENV['PG_HOST'] %>
  port: <%= ENV['PG_PORT'] %>
  username: <%= ENV['PG_USERNAME'] %>
  password: <%= ENV['PG_PASSWORD'] %>
  database: havka_test

production:
  <<: *default
  url: <%= ENV['DATABASE_URL'] %>```

## config/prompts/food_analyzer_prompt.rb

```
# config/prompts/food_analyzer_prompt.rb
# frozen_string_literal: true

FOOD_ANALYZER_PROMPT = <<~PROMPT
  Ты — кулинарный ассистент, который анализирует фотографию продуктов.  
  Твоя задача — определить, какие продукты находятся на изображении, в каком количестве и в какой форме,  
  чтобы человек мог использовать их для подбора рецептов и расчёта бюджета.

  Отвечай строго в формате **валидного JSON массива**, без пояснений и комментариев.

  Каждый объект: { "name": "название продукта", "quantity": число, "unit": "единица", "grams": число}.

  Если ты не уверен в точности, укажи меньший процент уверенности.

  Правила:
  - Обязательно указывай количество даже приблизительно.
  - Если продукт весовой, оцени массу в граммах.
  - Если продукт штучный (помидоры, яйца, лук и т.д.) — оцени количество штук.
  - Если это упаковка, банка или бутылка — оцени объём или массу по умолчанию (например, банка = 400 г, бутылка = 1000 мл).
  - Не пиши ничего кроме JSON-массива.
  - Если не удалось распознать продукты, верни пустой массив [].
  - Распознавай продукты строго из этого списка: Помидор, Огурец, Морковь, Капуста белокочанная, Капуста цветная, Капуста брокколи, Перец сладкий, Перец чили, Лук репчатый, Чеснок, Баклажан, Кабачок, Тыква, Свекла, Редис, Руккола, Шпинат, Салат листовой, Петрушка, Укроп, Листовой сельдерей, Лук-порей, Помидоры черри, Помидоры сливовидные, Яблоко, Банан, Апельсин, Мандарин, Лимон, Груша, Виноград, Киви, Персик, Нектарин, Слива, Черешня, Вишня, Арбуз, Дыня, Манго, Ананас, Клубника, Малина, Голубика, Ежевика, Смородина, Лосось, Форель, Треска, Сельдь, Скумбрия, Пикша, Карп, Окунь, Анчоус, Тунец, Креветка, Краб, Осьминог, Кальмар, Мидии, Лосось копчёный, Сельдь солёная, Рис белый, Рис коричневый, Гречка, Овсянка, Перловка, Пшено, Булгур, Кукурузная крупа, Манка, Мука ржаная, Мука пшеничная, Мука овсяная, Молоко, Йогурт, Сметана, Творог, Сыр твёрдый, Сыр мягкий, Сыр плавленый, Масло сливочное, Рис белый, Рис коричневый, Гречка, Овсянка, Перловка, Пшено, Булгур, Кукурузная крупа, Манка, Мука ржаная, Мука пшеничная, Мука овсяная, Сосиски свиные, Сосиски говяжьи, Франкфуртеры, Коктейльные сосиски, Сосиски с сыром, Сосиски куриные, Сосиски телячьи, Дрожжи сухие, Разрыхлитель теста, Сода пищевая, Кукурузный крахмал, Картофельный крахмал, Сахарная пудра, Желатин, Какао порошок, Ванильный сахар, Мука кукурузная, Мука миндальная, Мука кокосовая, Кукурузная мука грубого помола, Желатин порошковый, Пектин, Агар-агар, Крахмал аррорута, Виннокаменная кислота, Мёд, Меласса, Кукурузный сироп, Кленовый сироп, Коричневый сахар, Рисовый сироп, Масло оливковое, Масло подсолнечное, Масло рапсовое, Масло сливочное, Масло кунжутное, Масло кокосовое, Винный уксус, Бальзамический уксус, Яблочный уксус, Соевый соус, Тахини (кунжутная паста), Майонез, Горчица, Томатный соус, Кетчуп, Барбекю соус, Острый соус чили, Соус Терияки, Вустерширский соус, Соус Хойсин, Соус Песто, Маринад Терияки, Кунжутный соус, Соус Тахини, Лёгкий майонез, Горчица Дижон, Соус Ранч, Соус с голубым сыром, Сметанный соус, Помидоры консервированные, Кукуруза консервированная, Горох консервированный, Грибы консервированные, Фасоль консервированная, Сардины в масле, Тунец консервированный, Скумбрия консервированная, Ананас консервированный, Персики консервированные, Молоко сгущённое, Суп консервированный, Горох и морковь консервированные, Томатная паста.
  - В ответах в поле name используй строго названия из списка выше.
  - Если продукта, который ты распознал, нету в списке: игнорируй его.

  Пример ответа:

[{"name":"Помидор","quantity":3,"unit":"шт","grams":400}]

PROMPT
```

## app/controllers/application_controller.rb

```
class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end
```

## app/controllers/tasks_controller.rb

```
class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.all
  end

  # GET /tasks/:id
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: "Задача создана!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /tasks/:id/edit
  def edit
  end

  # PATCH/PUT /tasks/:id
  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "Задача обновлена!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/:id
  def destroy
    @task.destroy
    redirect_to tasks_path, notice: "Задача удалена!"
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :done)
  end
  
end
```

## app/controllers/vision_controller.rb

```
# app/controllers/vision_controller.rb
class VisionController < ApplicationController
  def new
    # простая форма для загрузки файла
  end

  def analyze
    file = params[:image]

    if file.blank?
      flash[:alert] = "Пожалуйста, выберите изображение"
      return redirect_to new_vision_path
    end

    @result = FoodAnalyzerService.analyze(file)

    respond_to do |format|
      format.html { render :new }
      format.turbo_stream { render partial: "results", locals: { result: @result } }
      format.json { render json: @result }
    end
  end
end













```

## app/controllers/telegram_controller.rb

```
require 'telegram/bot'
require 'open-uri'
require 'json'

class TelegramController < ApplicationController
  skip_before_action :verify_authenticity_token

  def webhook
    update = params[:telegram] || params

    if update['callback_query'].present?
      process_callback(update['callback_query'])
    elsif (message = update['message']).present?
      process_message(message)
    end

    head :ok
  rescue => e
    Rails.logger.error("Telegram webhook error: #{e.class} #{e.message}")
    head :internal_server_error
  end

  private

  def bot
    @bot ||= Telegram::Bot::Client.new(ENV['TELEGRAM_BOT_TOKEN'])
  end

  # ========== обработка обычных сообщений ==========
  def process_message(message)
    chat_id = message['chat']['id']
    user = User.find_or_create_by!(telegram_id: chat_id, name: message['chat']['first_name'])
    session = UserSession.for(user)

    if message['photo'].present?
      process_photo(message['photo'], chat_id, session)
    elsif message['text'].present?
      process_text(message['text'], chat_id, session)
    end
  end

  # ========== распознавание фото ==========
def process_photo(photo_sizes, chat_id, session)
  file_id = photo_sizes.last['file_id']
  Rails.logger.info("Получено фото с file_id: #{file_id}")

  bot.api.send_message(chat_id: chat_id, text: "Фото получено, начинаю распознавание... 🔍")

  file_info = bot.api.get_file(file_id: file_id)
  file_path = file_info.respond_to?(:file_path) ? file_info.file_path : file_info['result']['file_path']

  unless file_path
    bot.api.send_message(chat_id: chat_id, text: "Не удалось получить путь к файлу 😕")
    return
  end

  file_url = "https://api.telegram.org/file/bot#{ENV['TELEGRAM_BOT_TOKEN']}/#{file_path}"

  tempfile = Tempfile.new(['telegram_image', '.jpg'])
  tempfile.binmode
  tempfile.write URI.open(file_url).read
  tempfile.rewind

  result = FoodAnalyzerService.analyze(tempfile)
  tempfile.close

  if result.is_a?(Array) && result.first.is_a?(FoodAnalyzerService::ScanItem)
    items = result.map(&:name)
    session.state['recognized_items'] = items
    session.save!

    formatted = items.join(', ')
    bot.api.send_message(chat_id: chat_id, text: "Я вижу: #{formatted}.\n\nВведи свой бюджет 💰 (в рублях):")
  else
    bot.api.send_message(chat_id: chat_id, text: "Ошибка: #{result.first[:error]}")
  end
rescue => e
  Rails.logger.error("process_photo error: #{e.class} #{e.message}")
  bot.api.send_message(chat_id: chat_id, text: "Не удалось обработать изображение: #{e.message}")
end



  # ========== обработка текста ==========
def process_text(text, chat_id, session)
  if text =~ /^\d+$/
    # Проверяем, что есть распознанные продукты
    if session.state["recognized_items"].blank?
      bot.api.send_message(chat_id: chat_id, text: "Сначала отправь фото еды 🍲, чтобы я понял, что у тебя есть.")
      return
    end

    # Всё ок, продолжаем обработку бюджета
    session.state['budget'] = text.to_i
    session.save!

    bot.api.send_message(chat_id: chat_id, text: "Бюджет принят: #{text} ₽. Думаю над рецептами... 🤔")

    recommendations = RecipeRecommenderService.call(
      user: session.user,
      recognized_products: session.recognized_products,
      budget: session.budget
    )

    if recommendations.empty?
      bot.api.send_message(chat_id: chat_id, text: "Ни один рецепт не вписался в бюджет 😕")
    else
      session.state['recommendations'] = recommendations.map { |r| r.recipe.id }
      session.state['current_index'] = 0
      session.save!
      send_recipe(chat_id, recommendations.first)
    end
  else
    bot.api.send_message(chat_id: chat_id, text: "Отправь фото еды, я попробую распознать её состав 🍽️")
  end
end

  # ========== показ рецепта ==========
def send_recipe(chat_id, rec, message_id: nil)
  require 'json'

  recipe = rec.recipe

  text = <<~TXT
    🥘 *#{recipe.name}*

    Совпадение: #{(rec.owned_ratio * 100).to_i}%
    Нужно докупить на: #{rec.missing_cost} ₽
    Экономия: #{rec.saving} ₽

    Ингредиенты:
    #{rec.owned_ingredients.map { |i| "✅ #{i.product.name}" }.join("\n")}
    #{rec.missing_ingredients.map { |i| "❌ #{i.product.name}" }.join("\n")}
  TXT

  # экранируем символы, которые ломают Markdown
  safe_text = text
                .gsub('_', '\\_')
                .gsub('*', '\\*')
                .gsub('[', '\\[')
                .gsub('`', '\\`')

  keyboard = {
    inline_keyboard: [
      [
        { text: "Выбрать ✅", callback_data: "choose_recipe:#{recipe.id}" },
        { text: "Следующий ▶️", callback_data: "next_recipe" }
      ]
    ]
  }

  # используем JSON.generate, чтобы Telegram понял markup
  markup_json = JSON.generate(keyboard)

  if recipe.image_url.present?
    bot.api.send_photo(
      chat_id: chat_id,
      photo: recipe.image_url,
      caption: safe_text.strip,
      parse_mode: 'Markdown',
      reply_markup: markup_json
    )
  else
    bot.api.send_message(
      chat_id: chat_id,
      text: safe_text.strip,
      parse_mode: 'Markdown',
      reply_markup: markup_json
    )
  end
end



  # ========== обработка кнопок ==========
def process_callback(callback)
  # --- Telegram требует мгновенного подтверждения ---
  begin
    bot.api.answer_callback_query(callback_query_id: callback['id'])
  rescue Telegram::Bot::Exceptions::ResponseError => e
    Rails.logger.warn("Callback answer skipped: #{e.message}")
  rescue StandardError => e
    Rails.logger.warn("Callback quick-response failed: #{e.class} #{e.message}")
  end

  # --- Извлекаем данные максимально безопасно ---
  data     = callback['data'].to_s
  message  = callback['message'] || {}
  chat_id  = message.dig('chat', 'id') || callback.dig('from', 'id')

  return unless chat_id && data.present?

  user = User.find_by(telegram_id: chat_id)
  unless user
    bot.api.send_message(chat_id: chat_id, text: "Сессия устарела. Отправь фото заново 🍲")
    return
  end

  session = UserSession.for(user)
  unless session&.state&.dig('recommendations')
    bot.api.send_message(chat_id: chat_id, text: "Данные устарели. Начни с фото заново 📷")
    return
  end

  # --- Основная логика кнопок ---
  case data
  when /^next_recipe$/
    begin
      session.advance_recipe!
      index   = session.next_recipe_index
      rec_ids = session.state['recommendations']

      if index < rec_ids.size
        rec = RecipeRecommenderService.call(
          user: user,
          recognized_products: session.recognized_products,
          budget: session.budget
        ).find { |r| r.recipe.id == rec_ids[index] }

        if rec
          send_recipe(chat_id, rec)
        else
          bot.api.send_message(chat_id: chat_id, text: "Не удалось найти следующий рецепт 😕")
        end
      else
        bot.api.send_message(chat_id: chat_id, text: "Больше рецептов нет 🍽️")
      end
    rescue => e
      Rails.logger.error("Error in next_recipe: #{e.class} #{e.message}")
      bot.api.send_message(chat_id: chat_id, text: "Ошибка при загрузке следующего рецепта 😔")
    end

  when /^choose_recipe:(\d+)$/
    recipe_id = $1.to_i
    begin
      recipe = Recipe.find(recipe_id)
      bot.api.send_message(chat_id: chat_id, text: "Отличный выбор! 👨‍🍳\n\n#{recipe.instructions}")
    rescue ActiveRecord::RecordNotFound
      bot.api.send_message(chat_id: chat_id, text: "Рецепт не найден 🤷‍♂️")
    rescue => e
      Rails.logger.error("Error in choose_recipe: #{e.class} #{e.message}")
      bot.api.send_message(chat_id: chat_id, text: "Что-то пошло не так при выборе рецепта 😬")
    end

  else
    bot.api.send_message(chat_id: chat_id, text: "Неизвестная кнопка 🤔")
  end
end

end
```

## app/models/user.rb

```
class User < ApplicationRecord
  has_many :user_inventories, dependent: :destroy
  has_many :products, through: :user_inventories

  # Разрешаем все атрибуты для поиска (для галочки)
  def self.ransackable_attributes(auth_object = nil)
    column_names
  end

  # Разрешаем все ассоциации для поиска (для галочки)
  def self.ransackable_associations(auth_object = nil)
    reflect_on_all_associations.map(&:name).map(&:to_s)
  end
end
```

## app/models/user_session.rb

```
class UserSession < ApplicationRecord
  belongs_to :user

  scope :active, -> { where("expires_at > ?", Time.current) }

  def expired?
    expires_at.present? && expires_at < Time.current
  end

  # создаёт или возвращает активную сессию
  def self.for(user)
    session = active.find_by(user: user)
    if session.nil? || session.expired?
      session = create!(user: user, state: {}, expires_at: 30.minutes.from_now)
    end
    session
  end

  # вспомогательные методы
  def recognized_products
    Product.where(name: state["recognized_items"] || [])
  end

  def budget
    state["budget"].to_i
  end

  def next_recipe_index
    state["current_index"].to_i
  end

  def advance_recipe!
    state["current_index"] = next_recipe_index + 1
    save!
  end

  # --- для ActiveAdmin ---
  def self.ransackable_attributes(_auth_object = nil)
    column_names
  end

  def self.ransackable_associations(_auth_object = nil)
    reflect_on_all_associations.map(&:name).map(&:to_s)
  end
end
```

## app/models/user_inventory.rb

```
class UserInventory < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :product_caliber, optional: true

    # Разрешаем все атрибуты для поиска (для галочки)
  def self.ransackable_attributes(auth_object = nil)
    column_names
  end

  # Разрешаем все ассоциации для поиска (для галочки)
  def self.ransackable_associations(auth_object = nil)
    reflect_on_all_associations.map(&:name).map(&:to_s)
  end
end
```

## app/models/product.rb

```
class Product < ApplicationRecord
  has_many :product_calibers, dependent: :destroy
  has_many :recipe_ingredients, dependent: :destroy
  has_many :recipes, through: :recipe_ingredients
  has_many :user_inventories

    # Разрешаем все атрибуты для поиска (для галочки)
  def self.ransackable_attributes(auth_object = nil)
    column_names
  end

  # Разрешаем все ассоциации для поиска (для галочки)
  def self.ransackable_associations(auth_object = nil)
    reflect_on_all_associations.map(&:name).map(&:to_s)
  end
end
```

## app/models/product_caliber.rb

```
class ProductCaliber < ApplicationRecord
  belongs_to :product
  has_many :user_inventories

    # Разрешаем все атрибуты для поиска (для галочки)
  def self.ransackable_attributes(auth_object = nil)
    column_names
  end

  # Разрешаем все ассоциации для поиска (для галочки)
  def self.ransackable_associations(auth_object = nil)
    reflect_on_all_associations.map(&:name).map(&:to_s)
  end
end
```

## app/models/recipe.rb

```
class Recipe < ApplicationRecord
  has_many :recipe_ingredients, dependent: :destroy
  has_many :products, through: :recipe_ingredients

    # Разрешаем все атрибуты для поиска (для галочки)
  def self.ransackable_attributes(auth_object = nil)
    column_names
  end

  # Разрешаем все ассоциации для поиска (для галочки)
  def self.ransackable_associations(auth_object = nil)
    reflect_on_all_associations.map(&:name).map(&:to_s)
  end
end
```

## app/models/recipe_ingredient.rb

```
class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :product

    # Разрешаем все атрибуты для поиска (для галочки)
  def self.ransackable_attributes(auth_object = nil)
    column_names
  end

  # Разрешаем все ассоциации для поиска (для галочки)
  def self.ransackable_associations(auth_object = nil)
    reflect_on_all_associations.map(&:name).map(&:to_s)
  end
end
```

## app/services/food_analyzer_service.rb

```
# app/services/food_analyzer_service.rb
class FoodAnalyzerService
  require "openai"
  require Rails.root.join("config/prompts/food_analyzer_prompt")

  ScanItem = Struct.new(:id, :name, :quantity, :unit, :grams, keyword_init: true)

  def self.analyze(image_file)
    # 1️⃣ Загружаем изображение на imgBB
    uploaded = ImageUploaderService.upload(image_file)
    image_url = uploaded[:url]

    # 2️⃣ Отправляем запрос в OpenAI
    client = OpenAI::Client.new(api_key: ENV["OPENAI_API_KEY"])
    response = client.responses.create(
      model: "gpt-5-mini",
      input: [
        {
          role: "user",
          content: [
            { type: "input_text", text: FOOD_ANALYZER_PROMPT },
            { type: "input_image", image_url: image_url }
          ]
        }
      ]
    )

    raw_text = response.output_text || "[]"

    # 3️⃣ Парсим JSON и создаём список продуктов
    raw_items = JSON.parse(raw_text)
    raw_items.map.with_index do |item, idx|
      ScanItem.new(
        id: idx,
        name: item["name"],
        quantity: item["quantity"],
        unit: item["unit"],
        grams: item["grams"]
      )
    end

  rescue JSON::ParserError
    [{ error: "Не удалось разобрать JSON. Ответ модели: #{raw_text}" }]
  rescue => e
    Rails.logger.error "FoodAnalyzerService error: #{e.message}"
    [{ error: "Ошибка анализа изображения: #{e.message}" }]
  end
end
```

## app/services/image_uploader_service.rb

```
# app/services/image_uploader_service.rb
require 'net/http'
require 'uri'
require 'json'
require 'base64'

class ImageUploaderService
  IMGBB_API_URL = "https://api.imgbb.com/1/upload".freeze

  def self.upload(file)
    raise ArgumentError, "Файл не передан" unless file.present?

    api_key = ENV["IMGBB_API_KEY"]
    raise "IMGBB_API_KEY не задан" unless api_key.present?

    # Читаем файл и кодируем в base64
    image_data = Base64.strict_encode64(file.read)

    uri = URI("#{IMGBB_API_URL}?key=#{api_key}&expiration=600") # 10 минут
    response = Net::HTTP.post_form(uri, { 'image' => image_data })

    parsed = JSON.parse(response.body)
    if parsed["success"]
      {
        url: parsed.dig("data", "url"),
        delete_url: parsed.dig("data", "delete_url")
      }
    else
      raise "Ошибка imgBB: #{parsed['error']&.dig('message') || 'неизвестная'}"
    end
  rescue => e
    Rails.logger.error("ImageUploaderService error: #{e.message}")
    raise
  end
end
```

## app/services/recipe_recommender_service.rb

```
class RecipeRecommenderService
  Result = Struct.new(
    :recipe,
    :owned_ingredients,
    :missing_ingredients,
    :owned_ratio,
    :missing_cost,
    :saving,
    :total_cost, # добавили поле для полной стоимости рецепта
    keyword_init: true
  )

  def self.call(user:, recognized_products:, budget:)
    new(user, recognized_products, budget).call
  end

  def initialize(user, recognized_products, budget)
    @user = user
    @recognized_products = recognized_products
    @budget = budget.to_f
  end

  def call
    Recipe.includes(recipe_ingredients: :product).map do |recipe|
      matched, missing = split_ingredients(recipe)

      total = recipe.recipe_ingredients.size.nonzero? || 1
      owned_ratio = matched.size.to_f / total
      missing_cost = cost_of(missing)
      total_cost   = cost_of(recipe.recipe_ingredients)

        next if missing_cost > @budget

        Result.new(
        recipe: recipe,
        owned_ingredients: matched,
        missing_ingredients: missing,
        owned_ratio: owned_ratio.round(2),
        missing_cost: missing_cost.round,
        saving: (total_cost - missing_cost).round # реальная экономия
        )
    end.compact.sort_by { |r| [-r.owned_ratio.to_f, r.missing_cost.to_f] }
  end

  private

  def split_ingredients(recipe)
    matched = []
    missing = []

    recipe.recipe_ingredients.each do |ri|
      if @recognized_products.map(&:id).include?(ri.product.id)
        matched << ri
      else
        missing << ri
      end
    end

    [matched, missing]
  end

def cost_of(ingredients)
  ingredients.sum do |ri|
    unit_factor = unit_to_kg(ri.unit, ri.quantity.to_f, ri.product)
    price = ri.product.price_per_kg.to_f
    price * unit_factor
  end
end

  def unit_to_kg(unit, quantity, product)
    case unit
    when "кг" then quantity
    when "г" then quantity / 1000.0
    when "шт"
      if (cal = product.product_calibers.first)
        (quantity * cal.weight_g) / 1000.0
      else
        0
      end
    else
      0
    end
  end
end
```

## app/javascript/controllers/scan_controller.js

```
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = []

  connect() {
  this.container = this.element.querySelector("#scan_items_container")
  this.nextId = this.container ? this.container.children.length : 0
  console.log("ScanController подключён! nextId:", this.nextId)
}

  delete(event) {
    event.preventDefault()
    const id = event.target.dataset.scanId
    const frame = document.getElementById(`scan_item_${id}`)
    if(frame) frame.remove()
  }

  add(event) {
    event.preventDefault()
    const div = document.createElement("div")
    div.id = `scan_item_${this.nextId}`
    div.className = "scan-item"
    div.style.display = "flex"
    div.style.gap = "1rem"
    div.style.marginBottom = "0.5rem"

    div.innerHTML = `
      <input type="text" placeholder="Название">
      <input type="number" value="1" style="width:50px;">
      <input type="text" placeholder="Ед.изм" style="width:80px;">
      <input type="number" placeholder="грамм" style="width:60px;">
      <button data-action="click->scan#delete" data-scan-id="${this.nextId}">Удалить</button>
    `
    this.container.appendChild(div)
    this.nextId++
  }
}

```

## app/views/vision/new.html.erb

```
<h1>Анализ продуктов на фото</h1>

<%= form_with url: analyze_vision_path, multipart: true, local: false do |f| %>
  <div>
    <%= f.label :image, "Выберите фото" %><br>
    <%= f.file_field :image %>
  </div>

  <div style="margin-top: 1rem;">
    <%= f.submit "Анализировать", class: "button" %>
  </div>
<% end %>

<!-- Контейнер для Turbo Stream -->
<div id="vision_results">
  <% if @result.present? %>
    <%= render partial: "results", locals: { result: @result } %>
  <% end %>
</div>









```

## app/views/vision/_results.erb

```
<div data-controller="scan">
  <div id="scan_items_container">
    <%= render partial: "scan_item", collection: result, as: :item, formats: [:html] %>
  </div>

  <button data-action="click->scan#add" style="margin-top:1rem;">Добавить продукт</button>
</div>
```

## app/views/vision/_scan_item.html.erb

```
<%= turbo_frame_tag "scan_item_#{item.id}" do %>
  <div class="scan-item" style="display:flex; gap:1rem; margin-bottom:0.5rem;">
    <input type="text" value="<%= item.name %>" data-scan-item="name" placeholder="Название">
    <input type="number" value="<%= item.quantity %>" data-scan-item="quantity" style="width:50px;">
    <input type="text" value="<%= item.unit %>" data-scan-item="unit" style="width:80px;" placeholder="Ед.изм">
    <input type="number" value="<%= item.grams %>" data-scan-item="grams" style="width:60px;" placeholder="грамм">
    <button data-action="click->scan#delete" data-scan-id="<%= item.id %>">Удалить</button>
  </div>
<% end %>

```

## app/views/tasks/index.html.erb

```
<h1>Список задач</h1>

<%= link_to "Новая задача", new_task_path %>

<ul>
  <% @tasks.each do |task| %>
    <li>
      <strong><%= task.title %></strong>
      <% if task.done %>
        (выполнена)
      <% else %>
        (не выполнена)
      <% end %>
      <%= link_to "Показать", task_path(task) %> |
      <%= link_to "Редактировать", edit_task_path(task) %> |
      <%= link_to "Удалить", task_path(task), method: :delete, data: { confirm: "Ты уверен?" } %>
    </li>
  <% end %>
</ul>```

## app/views/tasks/show.html.erb

```
<h1><%= @task.title %></h1>
<p><%= @task.description %></p>
<p>Статус: <%= @task.done ? "выполнена" : "не выполнена" %></p>

<%= link_to "Редактировать", edit_task_path(@task) %> |
<%= link_to "Назад к списку", tasks_path %>```

## app/views/tasks/new.html.erb

```
<h1>Новая задача</h1>

<%= form_with(model: @task) do |form| %>
  <p>
    <%= form.label :title, "Заголовок" %><br>
    <%= form.text_field :title %>
  </p>

  <p>
    <%= form.label :description, "Описание" %><br>
    <%= form.text_area :description %>
  </p>

  <p>
    <%= form.label :done, "Выполнена?" %>
    <%= form.check_box :done %>
  </p>

  <p>
    <%= form.submit "Создать" %>
  </p>
<% end %>

<%= link_to "Назад к списку", tasks_path %>
```

## app/views/tasks/edit.html.erb

```
<h1>Редактировать задачу</h1>

<%= form_with(model: @task) do |form| %>
  <p>
    <%= form.label :title, "Заголовок" %><br>
    <%= form.text_field :title %>
  </p>

  <p>
    <%= form.label :description, "Описание" %><br>
    <%= form.text_area :description %>
  </p>

  <p>
    <%= form.label :done, "Выполнена?" %>
    <%= form.check_box :done %>
  </p>

  <p>
    <%= form.submit "Обновить" %>
  </p>
<% end %>

<%= link_to "Назад к списку", tasks_path %>
```

## db/schema.rb

```
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_10_16_150332) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "product_calibers", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "name"
    t.integer "weight_g"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_calibers_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "default_unit"
    t.decimal "price_per_kg"
    t.integer "calories"
    t.decimal "protein"
    t.decimal "fat"
    t.decimal "carbs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.integer "product_id", null: false
    t.decimal "quantity"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_recipe_ingredients_on_product_id"
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "total_time"
    t.integer "servings"
    t.string "cuisine"
    t.boolean "spicy"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "instructions"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_inventories", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.integer "product_caliber_id", null: false
    t.decimal "quantity"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_caliber_id"], name: "index_user_inventories_on_product_caliber_id"
    t.index ["product_id"], name: "index_user_inventories_on_product_id"
    t.index ["user_id"], name: "index_user_inventories_on_user_id"
  end

  create_table "user_sessions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.jsonb "state"
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "telegram_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "product_calibers", "products"
  add_foreign_key "recipe_ingredients", "products"
  add_foreign_key "recipe_ingredients", "recipes"
  add_foreign_key "user_inventories", "product_calibers"
  add_foreign_key "user_inventories", "products"
  add_foreign_key "user_inventories", "users"
  add_foreign_key "user_sessions", "users"
end
```

## .env

```
OPENAI_API_KEY=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
IMGBB_API_KEY=c7b64dc330200eabbdd399e7374015b5
TELEGRAM_BOT_TOKEN=8216743974:AAGSKbKGd5JMTazOL-AkJIeDzye4_BbQyPA

PG_USERNAME=maxc
PG_PASSWORD=10145
PG_HOST=127.0.0.1
PG_PORT=5432
PG_DATABASE=havka_development```
