module Grunge
  module Blocks
    class Act

      attr_accessor :name

      def initialize(name)
        @name = name
        puts "Act: #{name}"
      end

      def method(m)
        puts "ACT: METHOD: #{m}"
      end

      def path(p)
        puts "ACT: Path: #{p}"
      end

      def expect(s)
        puts "ACT: Expect: #{s}"
      end

    end
  end
end
