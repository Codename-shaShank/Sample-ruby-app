source "https://rubygems.org"

# ---- Core infra / k2web-style gems (slightly old versions on purpose) ----
gem "sinatra",     "~> 4.2.1"    # Web framework (needed for app.rb)
gem "redis",       "~> 4.2.5"    # Redis client (k2web uses Redis)
gem "aws-sdk-s3",  "~> 1.90.0"   # S3 client
gem "grape",       "~> 1.3.3"    # API framework (k2web uses Grape)
gem "rack",        "~> 3.2.4"    # Rack (web server interface)
gem "faraday",     "~> 1.3.0"    # HTTP client library

# ---- Dev / test tooling ----
group :development, :test do
  gem "rspec",   "~> 3.10.0"
end