require 'json'

require_relative './postman/collection'
require_relative './postman/expectation'
require_relative './postman/request'

module Grunge
  module Recorder
    module Postman
      SCHEMA = "https://schema.getpostman.com/json/collection/v2.1.0/collection.json"

      class << self

        def record(spec)
          h = {
            info: {
		          name: "Grunge2",
              schema: SCHEMA
            },

            item: []
          }

          col = Collection.new

          spec[:acts].each do |act|
            h[:item] << Request.new(act).to_h
          end

          spec[:contexts].each do |ctx|
            puts ctx
          end

          JSON.pretty_generate(h)
        end

      end
    end
  end
end

