# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Vacancies" do
    describe "Admin" do
      describe "vacancies" do
        refinery_login_with :refinery_user

        describe "vacancies list" do
          before do
            FactoryGirl.create(:vacancy, :title => "UniqueTitleOne")
            FactoryGirl.create(:vacancy, :title => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.vacancies_admin_vacancies_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.vacancies_admin_vacancies_path

            click_link "Add New Vacancy"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Title", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Vacancies::Vacancy.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Title can't be blank")
              Refinery::Vacancies::Vacancy.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:vacancy, :title => "UniqueTitle") }

            it "should fail" do
              visit refinery.vacancies_admin_vacancies_path

              click_link "Add New Vacancy"

              fill_in "Title", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Vacancies::Vacancy.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:vacancy, :title => "A title") }

          it "should succeed" do
            visit refinery.vacancies_admin_vacancies_path

            within ".actions" do
              click_link "Edit this vacancy"
            end

            fill_in "Title", :with => "A different title"
            click_button "Save"

            page.should have_content("'A different title' was successfully updated.")
            page.should have_no_content("A title")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:vacancy, :title => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.vacancies_admin_vacancies_path

            click_link "Remove this vacancy forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Vacancies::Vacancy.count.should == 0
          end
        end

      end
    end
  end
end
