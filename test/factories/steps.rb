# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :step do
    content "MyString"
    status "MyString"
    by_when "2014-06-07"
    goal nil
  end
end
