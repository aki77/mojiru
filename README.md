# Mojiru

Provides japanese conversion functionality for Strings using Ruby Refinements.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mojiru'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mojiru

## Usage

```ruby
using Mojiru

'モジル１２３'.zen_to_han # => "ﾓｼﾞﾙ123"
'ﾓｼﾞﾙ123'.han_to_zen # => "モジル１２３"
'モジル'.hiragana # => "もじる"
'もじる'.katakana # => "モジル"
'ﾓｼﾞﾙ１２３'.normalize_zen_han # => "モジル123"
' 　モジル 　'.strip_blank # => "モジル"
'モジル'.prepend_utf8_bom # => "モジル"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aki77/mojiru. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Mojiru project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/mojiru/blob/master/CODE_OF_CONDUCT.md).
