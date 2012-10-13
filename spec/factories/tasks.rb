# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "MyString"
    course "MyString"
    due_date "2012-10-13 00:14:39"
    info "MyText"
  end
end
