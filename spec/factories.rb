FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end

  factory :user2 do
    name     "Arvind Vyas"
    email    "arvind.vyas@example.com"
    password "foobar"
    password_confirmation "foobar"
  end

end