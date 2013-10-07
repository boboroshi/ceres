# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :source do
    name "MyString"
    url "MyString"
    email "MyString"
    telephone "MyString"
    address "MyText"
    notes "MyText"
  end
end
