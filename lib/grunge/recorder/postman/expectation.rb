require 'uri'

module Grunge
  module Recorder
    module Postman
      class Expectation

        def initialize(spec)
          @spec = spec
        end

        def to_js
          l = @spec.collect do |x, opts|
            self.public_send(x, opts) + [""]
          end
          
          l.flatten
        end

        def status(code)
          [
					  "pm.test(\"Response Status\", function () {",
						"    pm.expect(pm.response.code).to.eql(#{code})",
						"})"
          ]
        end

      end
    end
  end
end

