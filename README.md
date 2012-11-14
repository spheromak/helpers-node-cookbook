# helpers-node cookbook
This is a simple mixin that can be used in other mixins and singletons so you can pass context to them and not have to pollute the chef recipe namespace.

# Usage
Mix It in and you get `load` and `node` as well as the basic recipe DSL in your class/module

My General usage. 
      module SomeStuff
        class << self
          include Helpers::Node
          def stuff
            if node[:some][:stuff]
              return true
            end
          end
        end
      end

In recipe
    SomeStuff.load(run_context)
    SomeStuff.stuff

# Methods

### load 
Takes the run context and makes it into instance var.

### node
Acts like node in recipe scope

# Recipes
## default
  Does nothing, just makes sure the libs are loaded


# Author
Author:: Jesse Nelson (<spheromak@gmail.com>)
