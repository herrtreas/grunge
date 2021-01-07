require "grunge/blocks"
require "grunge/blueprint"
require "grunge/recorder"
require "grunge/cli"
require "grunge/version"

module Grunge
  class Error < StandardError; end

  def self.plan(&block)
    plan = Blocks::Plan.new
    plan.instance_exec(&block)

    bp = Blueprint.new(plan)
    spec = bp.build

    puts "\n:: Blueprint -->\n\n"
    pp spec

    rec = Grunge::Recorder::Postman.record(spec)
    puts rec

    File.open("rec.json", "w") do |f|
      f << rec
    end
  end

end
