module Grunge
  module Blocks
    class Context

      attr_reader :name
      attr_reader :scenes

      def initialize(name)
        @name = name
        @scenes = []
      end

      def scene(name, &block)
        scene = Scene.new(name)
        scene.instance_exec(&block)
        scenes << scene
      end

    end
  end
end
