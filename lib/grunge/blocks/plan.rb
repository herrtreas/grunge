module Grunge
  module Blocks
    class Plan

      attr_accessor :contexts

      def initialize
        @contexts = []
      end

      def context(name, &block)
        context = Context.new(name)
        context.instance_exec(&block)
        contexts << context
      end

    end
  end
end
