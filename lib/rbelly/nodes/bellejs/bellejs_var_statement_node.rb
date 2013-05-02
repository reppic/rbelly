module RBelly
  module Nodes
    class BellejsVarStatementNode < Node
      attr_reader :name, :visibility, :var_statement
      def initialize(visibility, var_statement)
        super(visibility)
        @name = visibility
        @visibility = visibility
        @var_statement = var_statement
      end
    end
  end
end
