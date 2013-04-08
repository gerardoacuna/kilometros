# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :donation do
    cause_id 1
    user_id 1
    amount "9.99"
    race_id 1
  end
end
