module Refinery
  module Subscribers
    module Admin
      class SubscribersController < ::Refinery::AdminController

        crudify :'refinery/subscribers/subscriber',
                :title_attribute => 'email',
                :xhr_paging => true

      end
    end
  end
end
