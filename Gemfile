source "https://rubygems.org"

# ---- Core infra / k2web-style gems (slightly old versions on purpose) ----
gem "sinatra",     "~> 2.1.0"    # Web framework (needed for app.rb)
gem "redis",       "~> 4.5.0"    # Redis client (k2web uses Redis)
gem "aws-sdk-s3",  "~> 1.110.0"  # S3 client
gem "grape",       "~> 3.1.0"    # API framework (k2web uses Grape)
gem "rack",        "~> 2.2.3"    # Rack (web server interface)
gem "faraday",     "~> 1.8.0"    # HTTP client library

# ---- Dev / test tooling ----
group :development, :test do
  gem "rspec",   "~> 3.11.0"
end