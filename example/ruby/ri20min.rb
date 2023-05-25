class MegaGreeter
  attr_accessor :names

  def initialize(names = "world")
    @names = names
  end

  def bla
    puts "blaaaaaaa"
  end
  
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "bye #{name}!"
      end
    else
      puts "bye #{@names}!"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye
  mg.bla
  
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye
  
  mg.names = ["Al", "bob", "mike"]
  mg.say_hi
  mg.say_bye

  mg.names = nil
  mg.say_hi
  mg.say_bye
end
