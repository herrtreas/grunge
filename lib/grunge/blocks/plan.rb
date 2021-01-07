module Grunge
  module Blocks
    class Plan

      attr_reader :acts
      attr_reader :contexts

      def initialize
        @acts = []
        @contexts = []
      end

      def act(name, &block)
        act = Act.new(name)
        act.instance_exec(&block)
        @acts << act
      end

      def context(name, &block)
        context = Context.new(name)
        context.instance_exec(&block)
        contexts << context
      end

    end
  end
end
