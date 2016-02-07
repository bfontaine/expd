ci = ENV["CI"] || ENV["CONTINUOUS_INTEGRATION"]
if ci
  require "coveralls"
  Coveralls.wear!
end

require "test/unit"
require "simplecov"

SimpleCov.formatter = Coveralls::SimpleCov::Formatter if ci
SimpleCov.start { add_filter "/tests/" }

require "expd"

class ExpdTests < Test::Unit::TestCase
  def test_version
    assert_match(/^\d+\.\d+\.\d+/, Expd.version)
  end

  def test_expand
    exp = Expd::Expander.new({"foo" => "foobar"})
    assert_equal "foobar", exp.expand("foo")
    assert_equal "", exp.expand("bar")
  end
end

exit Test::Unit::AutoRunner.run
