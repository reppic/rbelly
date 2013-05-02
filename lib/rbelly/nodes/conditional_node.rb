require 'rbelly/nodes/if_node'

module RBelly
  module Nodes
    class ConditionalNode < IfNode
      def initialize(test, true_block, else_block)
        super
      end
    end
  end
end
