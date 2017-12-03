require 'rspec'
require_relative '../demo_module'

class DemoModuleSpec
  RSpec.describe "This is a sample" do
    it 'should ' do
      util = DemoModule::Another.new
      ret = util.do_something
      expect(ret).to be 2
      puts 'Running'
    end
  end
end