require_relative 'helper'
require 'fluent/formatter'
require 'fluent/plugin/formatter_tsv'

class TsvFormatterTest < ::Test::Unit::TestCase
  def setup
    @formatter = Fluent::Plugin.new_formatter('tsv')
    @time = Fluent::Engine.now
  end

  def configure(conf)
    @formatter.configure({'utc' => true}.merge(conf))
  end

  def test_format
    configure({})
    tag = 'foo.test'
    record = {"a" => "foo", "b" => "bar"}

    formatted = @formatter.format(tag, @time, record)
    assert_equal("foo\tbar\n", formatted)
  end
end
