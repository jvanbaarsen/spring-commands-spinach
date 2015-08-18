# spring-commands-spinach

This gem implements the `spinach` command for
[Spring](https://github.com/jonleighton/spring).

## Usage

Add to your Gemfile:

``` ruby
gem "spring-commands-spinach"
```

### Spinach Environment
If you need to run spinach a different `RAILS_ENV` other than `"test"` then we can run spinach as:

```bash
SPINACH_ENV="feature" bin/spinach
```

Or at the first line of `bin/spinach`:

```ruby
ENV["SPINACH_ENV"]="feature"
```

## Credits

This gem was inspired by Jon Leighton's spring-commands-cucumber gem
