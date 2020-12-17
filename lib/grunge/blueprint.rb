module Grunge
  class Blueprint

    def initialize(plan)
      @plan = plan
    end

    def build
      bp = { contexts: [] }

      @plan.contexts.each do |context|
        c = { 
          name: context.name,
          scenes: []
        }

        context.scenes.each do |scene|
          s = { 
            name: scene.name,
            acts: []
          }

          scene.acts.each do |act|
            s[:acts] << {
              name: act.name
            }
          end

          c[:scenes] << s
        end

        bp[:contexts] << c
      end

      bp
    end
  end
end
