FactoryGirl.define do
  factory :user do
    name     "Josh Daniel"
    email    "josh@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end