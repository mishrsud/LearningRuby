module DemoModule
  #
  # Utility class
  class Util
    def from_util
      puts 'this comes from DemoModule::Util.from_util'
    end

    def while_loop_demo
      num = 0
      while num < 10
        puts "I'm at #{num}"
        num += 1
      end
    end

    def until_loop_demo
      puts "Inside until_loop_demo"
      num = 10
      until num.zero?
        num -= 1
        puts "I'm at #{num}"
      end
    end
  end

  class Another
    def self.say
      puts 'This is a static method'
    end

    def do_something
      num = 2
      puts 'done something'
      num
    end

    def self.hash_of_it
      the_hash = {
          'Ref' => 'toast',
          'Def' => 'tilt'
      }
      the_hash
    end
  end
end
