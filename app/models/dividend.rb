class Dividend < ApplicationRecord
  belongs_to :stock

  attribute :dividend_type, type: Symbol
  attribute :cum_date, type: Date
  attribute :ex_date, type: Date
end
