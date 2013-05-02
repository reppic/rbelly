module RBelly
  module Nodes
    class ClassNode < Node
      attr_reader :class_body, :parent
      def initialize(name, body, parent = nil)
        super(name)
        @class_body = body
        @parent = parent
      end
    end
  end
end
