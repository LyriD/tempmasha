module Refinery
  module Vacancies
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Vacancies

      engine_name :refinery_vacancies

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "vacancies"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.vacancies_admin_vacancies_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/vacancies/vacancy'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Vacancies)
      end
    end
  end
end
