module Grunge
  module Blocks
    class Act

      attr_reader :name
      attr_reader :expects

      def initialize(name)
        @name = name
      end

      def method(m = nil)
        return @method unless m
        @method = m.upcase
      end

      def path(p = nil)
        return @path unless p
        @path = p
      end

      def expect(e = {})
        @expects ||= []
        @expects << e
      end

    end
  end
end
