# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Subscribers" do
    describe "Admin" do
      describe "subscribers" do
        refinery_login_with :refinery_user

        describe "subscribers list" do
          before do
            FactoryGirl.create(:subscriber, :email => "UniqueTitleOne")
            FactoryGirl.create(:subscriber, :email => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.subscribers_admin_subscribers_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.subscribers_admin_subscribers_path

            click_link "Add New Subscriber"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Email", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Subscribers::Subscriber.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Email can't be blank")
              Refinery::Subscribers::Subscriber.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:subscriber, :email => "UniqueTitle") }

            it "should fail" do
              visit refinery.subscribers_admin_subscribers_path

              click_link "Add New Subscriber"

              fill_in "Email", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Subscribers::Subscriber.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:subscriber, :email => "A email") }

          it "should succeed" do
            visit refinery.subscribers_admin_subscribers_path

            within ".actions" do
              click_link "Edit this subscriber"
            end

            fill_in "Email", :with => "A different email"
            click_button "Save"

            page.should have_content("'A different email' was successfully updated.")
            page.should have_no_content("A email")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:subscriber, :email => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.subscribers_admin_subscribers_path

            click_link "Remove this subscriber forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Subscribers::Subscriber.count.should == 0
          end
        end

      end
    end
  end
end
