module RBelly
  module Nodes
    class ImportNode < Node
      attr_accessor :file
      def initialize(file_name)
        super(file_name)
        @file = file_name
      end

    end
  end
end
