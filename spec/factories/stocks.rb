FactoryBot.define do
  factory :stock do
    ticker { "MyString" }
    stock_source_id { 1 }
    company_source_id { 1 }
  end
end
