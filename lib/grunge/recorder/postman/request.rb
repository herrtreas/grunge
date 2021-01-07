require 'uri'

module Grunge
  module Recorder
    module Postman
      class Request

        attr_reader :act

        def initialize(act)
          @act = act
        end

        def to_h
          h = {
            name: act[:name],
			      event: [
			      	{
			      		listen: "test",
			      		script: {
                  exec: act[:expects].map { |x| Expectation.new(x).to_js }.flatten,
			      			type: "text/javascript"
			      		}
			      	}
			      ],
          }

          uri = URI.parse(act[:path])

          h[:request] = {
            method: act[:method],
				    header: [],
				    url: {
              raw: uri.to_s,
              protocol: uri.scheme,
              host: uri.host.split("."),
              path: uri.path.split("/")[1..]
				    }
			    }

          h[:response] = []
          h
        end

      end
    end
  end
end

