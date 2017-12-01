FactoryBot.define do
  factory :user do
    name("test123")
    email("test123@test.com")
    password("test123")
    password_confirmation("test123")
  end

  factory(:review) do
    content("Test Review")
  end

end
