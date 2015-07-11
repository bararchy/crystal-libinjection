# crystal-libinjection

Crystal binding around client9 [libinjection](https://github.com/client9/libinjection)

[![docrystal.org](http://www.docrystal.org/badge.svg)](http://www.docrystal.org/github.com/bararchy/crystal-libinjection)

## Installation

Add it to `Projectfile`

```crystal
deps do
  github "bararchy/crystal-libinjection"
end
```

## Usage

```crystal
require "crystal-libinjection"

# Pass a string to the module, and check if the string contains SQL Injections

if Libinjection::SqliScan.contains_sqli?(user_request)
  puts "SQL injection found".colorize.green
else
  puts "String is clear".colorize.green
end
```
```crystal
user_request = "Hello Just Testing"
=> String is clear

user_request = "Hello' OR 'a' = 'a' --DROP TABLE"
=> SQL injection found
```

## Development

* Add instructions on how to compile libinjection from sources
* Add a script to update it

## Contributing

1. Fork it ( https://github.com/bararchy/crystal-libinjection/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [bararchy](https://github.com/bararchy) bararchy - creator, maintainer
