
FactoryGirl.define do
  factory :vacancy, :class => Refinery::Vacancies::Vacancy do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

