FactoryBot.define do
  factory :todo do
    title 'Watch Netflix'
    deadline 2.days.from_now
    completed false
  end
end
