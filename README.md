[![Code Climate](https://codeclimate.com/github/tmaier/workflow-sequel.svg)](https://codeclimate.com/github/tmaier/workflow-sequel)
[![RubyGems](http://img.shields.io/gem/v/workflow-sequel.svg)](https://rubygems.org/gems/workflow-sequel)

# Workflow::Sequel

Adds support for [Sequel][] to the [workflow][] gem. 

## Installation

Add this line to your application's `Gemfile`:

```ruby
gem 'workflow-sequel'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install workflow-sequel
```

## Usage

Add the `workflow_state` column to your schema.

```ruby
Sequel.migration do
  change do
    add_column :examples, :workflow_state, :string
  end
end
```

Include `Workflow::Sequel` in your model.

```ruby
class Example < Sequel::Model
  include Workflow
  include Workflow::Sequel

  # ...
end
```

## Contributing

1. Fork it (<https://github.com/tmaier/workflow-sequel/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Acknowledgements

Created by [Tobias L. Maier][tmaier] for [maier.io UG (haftungsbeschränkt)][maier-io] and [BauCloud GmbH][baucloud].

[Sequel]: http://sequel.jeremyevans.net/ "Ruby ORM alternative to ActiveRecord"
[workflow]: https://github.com/geekq/workflow "Ruby State Machine"
[tmaier]: http://tobiasmaier.info/ "Tobias L. Maier"
[maier-io]: http://www.maier.io/ "maier.io UG"
[baucloud]: http://www.baucloud.com/ "BauCloud GmbH"
