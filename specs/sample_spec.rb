require "rspec"
require "rspec/buildkite/analytics"
puts "===="
puts ENV["TEST_ANALYTICS_TOKEN"]
puts ENV["TEST_ANALYTICS_TOKEN"].length
puts "===="
RSpec::Buildkite::Analytics.configure(token: ENV["TEST_ANALYTICS_TOKEN"], url: "http://analytics-api.buildkite.localhost/v1/uploads")

RSpec.describe "A sample test" do
  it "runs aok" do
    expect(42).to eql(42)
  end
end
