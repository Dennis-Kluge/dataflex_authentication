# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_profile do
    biography "MyText"
    telephone_number "MyText"
  end
end
