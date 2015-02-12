
FactoryGirl.define do
  factory :saloon, :class => Refinery::Saloons::Saloon do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

