module Refinery
  module Subscribers
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Subscribers

      engine_name :refinery_subscribers

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "subscribers"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.subscribers_admin_subscribers_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/subscribers/subscriber',
            :title => 'email'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Subscribers)
      end
    end
  end
end
