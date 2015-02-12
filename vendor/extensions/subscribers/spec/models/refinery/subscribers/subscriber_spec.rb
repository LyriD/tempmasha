require 'spec_helper'

module Refinery
  module Subscribers
    describe Subscriber do
      describe "validations" do
        subject do
          FactoryGirl.create(:subscriber,
          :email => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:email) { should == "Refinery CMS" }
      end
    end
  end
end
