class Indicator < ApplicationRecord
  attribute :percentual, default: false
    
  TYPES = {
      valuation: 'valuation',
      debt: 'debt',
      growth: 'growth',
      profitability: 'profitability',
      appreciation: 'appreciation'
  }.freeze
    
  define_method(:valuation?) { indicator_type == TYPES[:valuation] }
  define_method(:debt?) { indicator_type == TYPES[:debt] }
  define_method(:growth?) { indicator_type == TYPES[:growth] }
  define_method(:profitability?) { indicator_type == TYPES[:profitability] }
  define_method(:appreciation?) { indicator_type == TYPES[:appreciation] }
end
