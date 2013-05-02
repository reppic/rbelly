module RBelly
  module Nodes
    class ExtendsNode < Node
      attr_accessor :parent
      def initialize(parent)
        super(parent)
        @parent = parent
      end

    end
  end
end
