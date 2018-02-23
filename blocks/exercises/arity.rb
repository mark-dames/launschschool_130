# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')
=begin
1. A new proc is created with the proc method from Kernel class. It is mandotory to pass in a block.
2. A proc object is a instance of the Proc class. 
3. If we pass in too much or too less argument to the block no ArgumentError 
is raised. Here we pass in no argument while the block has a block local var.
This is then assigned to nil. 
=end


# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}" }
my_second_lambda = -> (thing) { puts "This is a #{thing}" }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
my_lambda.call
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }

=begin
1. We create a lamba with the Kernel lambad method. 
2. We can also create a lambad with te so called stabby lambda.
3. A lambda is actually an instance of the Proc class. A lambad is a proc.
4. If we invoke puts lambda we see that is is a proc only a special kind of.
Between () is says lambda. This indicated we are dealing with a lambad.
5. A lambda cares about the argument passed in to the block. Just as with
methods an ArgumentError is raised when you pass in too less or too much 
arguments to the block as the block takes. 
6. We cannot call .new on lambad because no lambda class exists.
=end
# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
block_method_1('seal')

=begin
1. When we call the block with yield and pass in too less or too much 
arguments, no ArgumentError is raised. On line 42 the block local var seal
ias assigned to nil as we do not pass any argument to the block. Thats why
still a message is outputted and no error is raised.
2. When we try to call a block using yield and no block is passed to the
method a LocalJumpError is raised. 
=end

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

=begin
On line 61 an error is raised because we try to get value of animal but there is no
local variable animal assigned in the blocks scope. 
=end

=begin
Blocks and Procs have lenient arity rules. If you pass in too less arguments or
no arguments to the block then the remaining block local variables are assigned
to nil and if you pass in too much arguments too the block, the remaining arguments
are ignored/discarded. 
lambdas raise an ArgumentError when you pass in not the exact amount of arguments
the block takes. 

lambdas are proc object and are instance of the Proc class. 
=end