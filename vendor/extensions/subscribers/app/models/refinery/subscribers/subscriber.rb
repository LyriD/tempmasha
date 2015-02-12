module Refinery
  module Subscribers
    class Subscriber < Refinery::Core::BaseModel
      self.table_name = 'refinery_subscribers'

      attr_accessible :email, :position

      validates :email, :presence => true, :uniqueness => true
    end
  end
end
