module Refinery
  module Vacancies
    class Vacancy < Refinery::Core::BaseModel
      self.table_name = 'refinery_vacancies'

      has_many :refinery_inquiries_inquiry, :class_name => 'Refinery::Inquiries::Inquiry'

      attr_accessible :title, :body, :position

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
