# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :goal do
    content "MyString"
    category "MyString"
    num_value 1
    client nil
  end
end
