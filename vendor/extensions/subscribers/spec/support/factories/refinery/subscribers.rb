
FactoryGirl.define do
  factory :subscriber, :class => Refinery::Subscribers::Subscriber do
    sequence(:email) { |n| "refinery#{n}" }
  end
end

