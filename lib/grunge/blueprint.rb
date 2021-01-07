module Grunge
  class Blueprint

    def initialize(plan)
      @plan = plan
    end

    def build
      bp = { 
        acts: [],
        contexts: []
      }

      @plan.acts.each do |act|
        bp[:acts] << {
          name: act.name,
          method: act.method,
          path: act.path,
          expects: act.expects
        }
      end

      @plan.contexts.each do |context|
        c = { 
          name: context.name,

          acts: [],
          scenes: []
        }

        context.scenes.each do |scene|
          s = { 
            name: scene.name,
            acts: []
          }

          scene.acts.each do |act|
            s[:acts] << {
              name: act.name,
              method: act.x_method,
              path: act.x_path
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
