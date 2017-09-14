require_relative 'helper'
require 'fluent/formatter'
require 'fluent/plugin/formatter_tsv'

class TsvFormatterTest < ::Test::Unit::TestCase
  def setup
    @formatter = Fluent::Plugin.new_formatter('tsv')
    @time = Fluent::Engine.now
  end

  def e(name, arg='', attrs={}, elements=[])
    Fluent::Config::Element.new(name, arg, attrs, elements)
  end

  def configure(conf)
    @formatter.configure(e('ROOT', '', {'utc' => true}.merge(conf)))
  end

  def test_format
    configure({})
    tag = 'foo.test'
    record = {"a" => "foo", "b" => "bar"}

    formatted = @formatter.format(tag, @time, record)
    assert_equal("foo\tbar\n", formatted)
  end
end
