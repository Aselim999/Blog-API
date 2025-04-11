source "https://rubygems.org"

ruby "3.2.8"

gem "rails", "~> 7.1.5", ">= 7.1.5.1"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false

# 🔐 Auth-related gems
gem "bcrypt", "~> 3.1.7"           # Password encryption
gem "jwt", "~> 2.7"                # JSON Web Tokens
gem "rack-cors", "~> 1.1"          # CORS for APIs
gem 'sidekiq'                      # For Auto Deletion


group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
end

# Uncomment if needed
# gem "image_processing", "~> 1.2"
# gem "redis", ">= 4.0.1"
# gem "kredis"
# gem "jbuilder"
# gem "spring"
