# Ruby: Bypassing attr_reader with Direct Instance Variable Modification

This repository demonstrates a subtle issue in Ruby where directly modifying instance variables using `instance_variable_set` bypasses the access control provided by `attr_reader`.  While `attr_reader` is intended to provide read-only access, it's not foolproof against direct manipulation of the instance variable.

The `bug.rb` file showcases this issue.  The solution, located in `bugSolution.rb`, while not completely preventing direct modification, highlights safer alternatives and best practices for managing instance variable access.