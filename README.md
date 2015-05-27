# crystal-libinjection

Crystal binding around client9 [libinjection](https://github.com/client9/libinjection)


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

test = Libinjection::SqliScan.string("Hello")
if test == 0
  puts "No Injection".colorize.green
elsif test == 1
  puts "Injection".colorize.red
end

test = Libinjection::SqliScan.string("Hello' OR 'a'='a' --DROP TABLE")
if test == 0
  puts "No Injection".colorize.red
elsif test == 1
  puts "Injection".colorize.green
end

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
