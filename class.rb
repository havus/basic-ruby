require "awesome_print"

# def shout first_name:, last_name:
#   ap first_name + ' ' + last_name + text.to_s
# end
# shout(first_name: "John", last_name: "Doe")

# def print_all(*text)
#   text.each {|el| ap el}
# end
# print_all("Hello", "world")

$about = "Hello new people :)"

class People
  @@owner = "havus"
  def initialize first_name:, last_name:, age:
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def age
    set_age

    @age
  end
  
  def get_owner
    puts @@owner
  end
  
  private
    def set_age
      @age = my_setter 25
    end

    def my_setter num
      if $about
        20
      end
    end

end

john = People.new first_name: 'john', last_name: 'doe', age: 20
# puts john.age

class Oyeoye
  def perform
    puts 'oyeoye'
  end
end

# Oyeoye.new.perform

# john = People.new(age: 20, first_name: "John", last_name: "Doe")
# ap john.age
# puts "1".to_f
# puts $about

def the_condition(name: nil)
  str = 'name' + 'asd' if !name.nil?
  puts str
end

the_condition