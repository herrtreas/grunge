module Grunge
  module Blocks
    class Context

      attr_reader :name

      attr_reader :acts
      attr_reader :scenes

      def initialize(name)
        @name = name
        @acts = []
        @scenes = []
      end

      def act(name, &block)
        act = Act.new(name)
        act.instance_exec(&block)
        @acts << act
      end

      def scene(name, &block)
        scene = Scene.new(name)
        scene.instance_exec(&block)
        scenes << scene
      end

    end
  end
end
