module Refinery
  module Saloons
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Saloons

      engine_name :refinery_saloons

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "saloons"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.saloons_admin_saloons_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/saloons/saloon'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Saloons)
      end
    end
  end
end
