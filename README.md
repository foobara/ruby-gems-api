# Foobara::RubyGemsApi

`foobara-ruby-gems-api` provides Foobara commands that invoke the RubyGems.org REST API endpoints.

## Installation

Add `gem "foobara-ruby-gems-api"` to your Gemfile or .gemspec file and `bundle install`. Or even just `gem install foobara-ruby-gems-api` if just playing with it directly in the scripts.

## Usage

Require the library and run one of its commands. For example to fetch details about a given gem, run the command below:

```ruby
require "foobara/ruby_gems_api"

outcome = Foobara::RubyGemsApi::GetGem.run(gem_name: "rake")

if outcome.success?
  gem_details = outcome.result
  puts "#{gem_details.name}, #{gem_details.version}, (#{gem_details.downloads} downloads)"
else
  puts "Failed: #{outcome.errors_hash}"
end
```

The above code will output the current version and download numbers for the `rake` gem.

### The available commands are:

| Command | Required input | RubyGems.org endpoint | Result |
| --- | --- | --- | --- |
| `Foobara::RubyGemsApi::Search` | `query` | `/api/v1/search.json` | Array of `Gem` models |
| `Foobara::RubyGemsApi::GetGem` | `gem_name` | `/api/v1/gems/{gem_name}.json` | `Gem` model |
| `Foobara::RubyGemsApi::GetVersions` | `gem_name` | `/api/v1/versions/{gem_name}.json` | Array of `Version` models |
| `Foobara::RubyGemsApi::GetOwners` | `gem_name` | `/api/v1/gems/{gem_name}/owners.json` | Array of `User` models |

## Contributing

Bug reports and pull requests are always welcome at [foobara/ruby-gems-api](https://github.com/foobara/ruby-gems-api/).

To work on an existing issue or submit a Pull Request:

1. Fork the repository and clone it to your local machine
2. Run `bundle install` to install dependencies
3. Run `rake` to ensure that everything works as expected before making any changes.
4. Implement your changes
5. Re-run `rake` to make sure that all tests and Rubocop pass
6. Commit your changes, push to GitHub and open a Pull Request for review

## License

This project is licensed under the MPL-2.0 license. Please see [LICENSE.txt](LICENSE.txt) for more information.
