# Sample-ruby-app

This is a test repository for practicing opening Pull Requests with automated bot tools. The repository contains a simple Ruby/Sinatra application with gem dependencies that can be upgraded over time.

## Purpose

This repository is designed to allow bots to:
- Detect outdated Ruby gem dependencies
- Automatically open Pull Requests for gem upgrades
- Practice automated dependency management workflows

## Structure

- **Gemfile**: Contains Ruby gem dependencies with version constraints
- **Gemfile.lock**: Locked versions of all dependencies
- **app.rb**: A simple Sinatra web application
- **app_spec.rb**: RSpec tests for the application
- **Rakefile**: Task definitions for running tests and starting the app

## Gems Included

The repository includes several popular Ruby gems:
- **sinatra**: Web framework
- **faraday**: HTTP client
- **json**: JSON parsing
- **rspec**: Testing framework
- **rubocop**: Code linting
- **sqlite3**: Database
- **dotenv**: Environment variable management
- **rake**: Task management

## Usage

### Running Tests
```bash
bundle install
bundle exec rspec app_spec.rb
```

### Starting the Application
```bash
bundle install
ruby app.rb
```

### Running with Rake
```bash
bundle exec rake test
bundle exec rake start
```

## Bot Integration

Dependency management bots (like Dependabot, Renovate, etc.) can:
1. Monitor the Gemfile and Gemfile.lock for outdated dependencies
2. Automatically create Pull Requests to upgrade gems
3. Run tests to ensure compatibility
4. Keep dependencies up-to-date and secure

## License

This is a sample repository for testing purposes.