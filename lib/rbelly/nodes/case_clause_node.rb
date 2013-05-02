require 'rbelly/nodes/binary_node'

module RBelly
  module Nodes
    class CaseClauseNode < BinaryNode
      def initialize(left, src = SourceElementsNode.new([]))
        super
      end
    end
  end
end
