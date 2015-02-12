module Refinery
  module Saloons
    class Saloon < Refinery::Core::BaseModel
      self.table_name = 'refinery_saloons'

      attr_accessible :title, :body, :adress, :phone, :time, :map_id, :position, :map_url, :metro

      validates :title, :presence => true, :uniqueness => true

      belongs_to :map, :class_name => '::Refinery::Image'

      has_many_page_images
    end
  end
end
