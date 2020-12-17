require "grunge/blocks"
require "grunge/blueprint"
require "grunge/cli"
require "grunge/version"

module Grunge
  class Error < StandardError; end

  def self.plan(&block)
    plan = Blocks::Plan.new
    plan.instance_exec(&block)

    bp = Blueprint.new(plan)
    pp bp.build
  end

end
