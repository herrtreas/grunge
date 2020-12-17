module Grunge
  module Blocks
    class Scene

      attr_reader :name
      attr_reader :acts

      def initialize(name)
        @acts = []
        @name = name
      end

      def act(name, &block)
        act = Act.new(name)
        act.instance_exec(&block)
        @acts << act
      end

    end
  end
end
