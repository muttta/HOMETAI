FactoryBot.define do
  factory :diary do
    
    comment     {"testtext"}
    category_id { 2 }
    feeling_id  { 2 }
    day         { "2022/01/01"}

    association :user
   
  end
end