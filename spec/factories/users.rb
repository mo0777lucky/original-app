FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'m123456'}
    password_confirmation {password}
    profile               {'こんにちは、世界。Hello World.'}
  end
end