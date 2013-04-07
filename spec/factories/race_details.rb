# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :race_detail, :class => 'RaceDetails' do
    date "2013-04-07 16:20:39"
    distance "MyString"
    race_id 1
  end
end
