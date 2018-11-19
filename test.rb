# class Test
#   attr_accessor :data
#
#   def initialize(data)
#     @data = data
#   end
# end
# test = Test.new('hello')
# p test.data

class Sample
   @val = ""
   @@val2 = "class_variable"

   def initialize
     @val = "instance_variable"
   end

   def show
     puts @val
   end
end

sample = Sample.new
p sample.instance_variables
