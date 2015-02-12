module Refinery
  module Saloons
    module Admin
      class SaloonsController < ::Refinery::AdminController

        crudify :'refinery/saloons/saloon',
                :xhr_paging => true

      end
    end
  end
end
