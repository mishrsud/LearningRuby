require './demo_module'

#
# FirstClass
class FirstClass
  # brings every thing defined in DemoModule in scope
  include DemoModule
  def initialize
    # @ is an instance variable
    @name = 'FirstClass'
  end

  def say_hello
    puts "Hello from #{@name}"
  end

  def exception_demo
    begin
      file = open('test.txt')
      puts 'found file' if file
    rescue
      file = STDIN
      puts "Inside rescue #{file}"
    end
  end

  private

  def helper_method
    puts 'this is a private method'
  end

  first_class = FirstClass.new
  first_class.say_hello
  # first_class.helper_method # this causes an exception
  first_class.exception_demo
  util = Util.new
  util.while_loop_demo
  util.until_loop_demo

  (0..5).each do |i|
    puts i
  end

  Another.say
  # Another.do_something
end