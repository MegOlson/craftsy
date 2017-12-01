FactoryBot.define do
  factory :user do
    name("test123")
    email("test123@test.com")
    password("test123")
    password_confirmation("test123")
  end

  factory :product do
    user
    name("Test Product")
    description("Test description")
    price(5)
    craft_type("Test Type")
  end

  factory :review do
    association :user, factory: :user, name: "Test", email: "test@test.com"
    product
    content("Test Review")
  end

end
