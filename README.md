![Build](https://github.com/anyone-oslo/postnummer_norge/workflows/Build/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/37b0128a6c9ccfb78ddb/maintainability)](https://codeclimate.com/github/anyone-oslo/postnummer_norge/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/37b0128a6c9ccfb78ddb/test_coverage)](https://codeclimate.com/github/anyone-oslo/postnummer_norge/test_coverage)

# PostnummerNorge

Ruby gem for looking up Norwegian postal codes.

## Usage

```ruby
include PostnummerNorge

PostalCode.exists?("0662") # => true
PostalCode.find("0662").name # => 'OSLO'
PostalCode.find_by_name("HUNDVÅG").first.code # => '4077'
```
