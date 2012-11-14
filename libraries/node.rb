module Helpers
  module Node
    include Chef::Mixin::Language

    attr_accessor :run_context

    def load(run_context)
      @run_context =  run_context
    end

    def node
      run_context.node
    end 
  end
end
