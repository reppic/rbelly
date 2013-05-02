module RBelly
  module Nodes
    class BellejsFuncStatementNode < Node
      attr_reader :name, :visibility, :func_statement
      def initialize(visibility, func_statement)
        super(visibility)
        @name = visibility
        @visibility = visibility
        @func_statement = func_statement
      end
    end
  end
end
