module Refinery
  module Saloons
    class SaloonsController < ::ApplicationController

      before_filter :find_all_saloons
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @saloon in the line below:
        present(@page)
      end

      def show
        @saloon = Saloon.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @saloon in the line below:
        present(@page)
      end

    protected

      def find_all_saloons
        @saloons = Saloon.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/saloons").first
      end

    end
  end
end
