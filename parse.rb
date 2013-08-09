require "rubygems"
require "erb"

template = File.open("my_template.erb") {|f| f.read}
puts template

class A
  attr_reader :result
  def initialize(s)
    @string_to_puts = s
    @result = ""
  end
  def get_binding
    binding
  end
end

a = A.new('Your name is #{@name}')
b = A.new('Your last name is #{@last_name}')

erb = ERB.new(template, nil, nil, "@result")
erb.result a.get_binding
puts a.result 

erb.result b.get_binding
puts b.result 

