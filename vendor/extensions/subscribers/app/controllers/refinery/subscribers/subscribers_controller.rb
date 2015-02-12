module Refinery
  module Subscribers
    class SubscribersController < ::ApplicationController

      before_filter :find_all_subscribers
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @subscriber in the line below:
        present(@page)
      end

      def show
        @subscriber = Subscriber.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @subscriber in the line below:
        present(@page)
      end

      def add_one
        @subscriber = Subscriber.create!(:email => params[:subscriber][:email])
        redirect_to :back
      end

    protected

      def find_all_subscribers
        @subscribers = Subscriber.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/subscribers").first
      end

    end
  end
end
