require File.expand_path(File.dirname(__FILE__) + '/../../test_helper')

describe ::Inch::CodeObject::Provider do
  it "should parse all objects" do
    Dir.chdir File.dirname(__FILE__)
    @provider = ::Inch::CodeObject::Provider.parse(fixture_path(:simple), ["lib/**/*.rb"], [])
    refute @provider.objects.empty?
  end
end
