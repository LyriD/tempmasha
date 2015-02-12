module Refinery
  module Vacancies
    module Admin
      class VacanciesController < ::Refinery::AdminController

        crudify :'refinery/vacancies/vacancy',
                :xhr_paging => true

      end
    end
  end
end
