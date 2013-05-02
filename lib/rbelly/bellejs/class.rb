module RBelly
  module BELLEJS
    class Class < Base
      class << self
        def create(*args)
          if args.length > 0
            parser = RBelly::Parser.new
            body = args.pop
            tree = parser.parse("class { #{body} }")
            klass = tree.value.first
            self.new(klass.class_body)
          else
            self.new
          end
        end
      end

      attr_reader :body
      def initialize(body = nil)
        super()
        @body = body
        self['toString'] = :undefined
      end

      #def js_call(scope_chain, *params)
      #  arguments.each_with_index { |name, i|
      #    scope_chain[name.value] = params[i] || RBelly::Runtime::UNDEFINED
      #  }
      #  function_visitor  = RBelly::Visitors::FunctionVisitor.new(scope_chain)
      #  eval_visitor      = RBelly::Visitors::EvaluationVisitor.new(scope_chain)
      #  body.accept(function_visitor) if body
      #  body.accept(eval_visitor) if body
      #end
    end
  end
end
