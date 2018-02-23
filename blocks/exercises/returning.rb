# Group 1
def check_return_with_proc
  my_proc = proc { return }
  my_proc.call
  puts "This will never output to screen."
end

check_return_with_proc
=begin
1. When a proc is created in a method and the block has a return inside it,
return makes sure you return outside of the method where the proc is created.
In this case it returns to the main scope. 
2. Lines of code after the proc are not executed.
=end

# Group 2
my_proc = proc { return }

def check_return_with_proc_2(my_proc)
  my_proc.call
end

check_return_with_proc_2(my_proc)
=begin
1. We create a proc in the main scope with a block with return in the body.
2. Inside the method we call the block. This will raise an LocalJumpError.
returns returns from the context where it is created. In this case it is created
in the main scope, it trys to return from the main scope. As main scope is the
top level program an error is raised. We can't return to anything here.
=end

# Group 3
def check_return_with_lambda
  my_lambda = lambda { return }
  my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda
=begin
1. A lambdas is created int he method.
2. When we have a return the block from a lambad return returns to its
surrounding context. In this case the surrounding context is the method.
3. As we return to the method, method execution goes futher.
=end

# Group 4
my_lambda = lambda { return }
def check_return_with_lambda(my_lambda)
  my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda(my_lambda)
=begin
As with example 3 return returns to its surrounding context. Also here that is
the method. It does not matter if the lambda is created in the method or the main scope.
=end

# Group 5
def block_method_3
  yield
end

block_method_3 { return }

=begin
As with procs, here also a LocalJumpError is raised. return returns from the
context where it was created. It was created in the main scope. 
=end

=begin
procs and blocks return from the context where they where created. If that
is in the main scope a LocalJumpError is raised. If they are created in a method,
returns return from the method.
A lambda returns always to its surrounding context. 
=end