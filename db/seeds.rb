# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# seeds = [
#   'company',
#   # 'stock',
#   'indicator',
#   'dividend'
# ]

# seeds.each { |seed| load Rails.root.join("db/seeds/#{seed}_seed.rb") }

puts 'Registering indicators...'

indicators = [
  {
    indicator_name: 'VAL (1D)',
    indicator_type: 'appreciation',
    description: 'descrição do VAL',
    percentual: true,
    positive_direction: true,
    good_margin: 0
  },
  {
    indicator_name: 'VAL (1M)',
    indicator_type: 'appreciation',
    description: 'descrição do VAL',
    percentual: true,
    positive_direction: true,
    good_margin: 0
  },
  {
    indicator_name: 'VAL (12M)',
    indicator_type: 'appreciation',
    description: 'descrição do VAL',
    percentual: true,
    positive_direction: true,
    good_margin: 0
  },
  {
    indicator_name: 'PAYOUT',
    indicator_type: 'valuation',
    description: 'descrição do payout',
    percentual: true,
    positive_direction: true,
    good_margin: 30
  },
  {
    indicator_name: 'MARGEM BRUTA',
    indicator_type: 'profitability',
    description: 'descrição da MARGEM BRUTA',
    percentual: true,
    positive_direction: true,
    good_margin: 10
  },
  {
    indicator_name: 'MARGEM LÍQUIDA',
    indicator_type: 'profitability',
    description: 'descrição da MARGEM LÍQUIDA',
    percentual: true,
    positive_direction: true,
    good_margin: 10
  },
  {
    indicator_name: 'EY',
    indicator_type: 'valuation',
    description: 'descrição do EY',
    percentual: true,
    positive_direction: true,
    good_margin: 15
  },
  {
    indicator_name: 'EV/EBIT',
    indicator_type: 'valuation',
    description: 'descrição do EV/EBIT',
    percentual: false,
    positive_direction: false,
    good_margin: 5
  },
  {
    indicator_name: 'EV/EBITDA',
    indicator_type: 'valuation',
    description: 'descrição do EV/EBITDA',
    percentual: false,
    positive_direction: false
  },
  {
    indicator_name: 'VPA',
    indicator_type: 'valuation',
    description: 'descrição do VPA',
    percentual: false,
    positive_direction: true,
    good_margin: 0.1
  },
  {
    indicator_name: 'LPA',
    indicator_type: 'valuation',
    description: 'descrição do LPA',
    percentual: false,
    positive_direction: true,
    good_margin: 0.1
  },
  {
    indicator_name: 'ROE',
    indicator_type: 'profitability',
    description: 'descrição do ROE',
    percentual: true,
    positive_direction: true,
    good_margin: 15
  },
  {
    indicator_name: 'ROIC',
    indicator_type: 'profitability',
    description: 'descrição do ROIC',
    percentual: true,
    positive_direction: true,
    good_margin: 10
  },
  {
    indicator_name: 'ROA',
    indicator_type: 'profitability',
    description: 'descrição do ROA',
    percentual: true,
    positive_direction: true,
    good_margin: 10
  },
  {
    indicator_name: 'CAGR RECEITA 5A',
    indicator_type: 'growth',
    description: 'descrição do CAGR RECEITA 5A',
    percentual: true,
    positive_direction: true,
    good_margin: 10
  },
  {
    indicator_name: 'CAGR LUCROS 5A',
    indicator_type: 'growth',
    description: 'descrição do CAGR LUCROS 5A',
    percentual: true,
    positive_direction: true,
    good_margin: 10
  },
  {
    indicator_name: 'LIQUIDEZ GERAL',
    indicator_type: 'debt',
    description: 'descrição do LIQUIDEZ GERAL',
    percentual: false,
    positive_direction: true,
    good_margin: 1
  },
  {
    indicator_name: 'P/L',
    indicator_type: 'valuation',
    description: 'descrição do P/L',
    percentual: false,
    positive_direction: false,
    good_margin: 10
  },
  {
    indicator_name: 'P/VP',
    indicator_type: 'valuation',
    description: 'descrição do P/VP',
    percentual: false,
    positive_direction: false,
    good_margin: 1.5,
    great_margin: 1
  },
  {
    indicator_name: 'DY',
    indicator_type: 'valuation',
    description: 'descrição do DY',
    percentual: true,
    positive_direction: true,
    good_margin: 6
  },
  {
    indicator_name: 'PEG RATIO',
    indicator_type: 'valuation',
    description: 'descrição do PEG RATIO',
    percentual: false,
    positive_direction: false,
    good_margin: 1
  },
  {
    indicator_name: 'PEG RATIO MOD',
    indicator_type: 'valuation',
    description: 'descrição do PEG RATIO MOD',
    percentual: false,
    positive_direction: true,
    good_margin: 1
  },
  {
    indicator_name: 'D. LÍQ/PL',
    indicator_type: 'debt',
    description: 'descrição do D. LÍQ/PL',
    percentual: false,
    positive_direction: false,
    good_margin: 1.5
  },
  {
    indicator_name: 'D. LÍQ/EBIT',
    indicator_type: 'debt',
    description: 'descrição do D. LÍQ/EBIT',
    percentual: false,
    positive_direction: false,
    good_margin: 3
  },
  {
    indicator_name: 'D. LÍQ/EBITDA',
    indicator_type: 'debt',
    description: 'descrição do D. LÍQ/EBITDA',
    percentual: false,
    positive_direction: false,
    good_margin: 3
  },
  {
    indicator_name: 'PASSIVOS/ATIVOS',
    indicator_type: 'debt',
    description: 'descrição do PASSIVOS/ATIVOS',
    percentual: false,
    positive_direction: false,
    good_margin: 1,
    great_margin: 0.5
  }
]

indicators.each do |indicator|
  Indicator.find_or_create_by!(indicator)
end

puts 'Indicators registered successfully!'

puts 'Registering companies...'

companies = [
    {
        company_name: 'Vale',
        cnpj: '33.592.510/0001-54',
        ipo: 1970,
        market_value: 286139037000,
        firm_value: 329066037000,
        equity: 186988000000,
        assets: 441036000000,
        gross_debt: 67165000000,
        cash_and_cash_equivalents: 24238000000,
        sector: 'Materiais Básicos',
        segment: 'Minerais Metálicos'
    },
    {
        company_name: 'Vale',
        cnpj: '33.592.510/0001-54',
        ipo: 1970,
        market_value: 286139037000,
        firm_value: 329066037000,
        equity: 186988000000,
        assets: 441036000000,
        gross_debt: 67165000000,
        cash_and_cash_equivalents: 24238000000,
        sector: 'Materiais Básicos',
        segment: 'Minerais Metálicos'
    },
    {
        company_name: 'Vale',
        cnpj: '33.592.510/0001-54',
        ipo: 1970,
        market_value: 286139037000,
        firm_value: 329066037000,
        equity: 186988000000,
        assets: 441036000000,
        gross_debt: 67165000000,
        cash_and_cash_equivalents: 24238000000,
        sector: 'Materiais Básicos',
        segment: 'Minerais Metálicos'
    },
]

companies.each do |company|
  Company.find_or_create_by!(company)
end

puts 'Companies registered successfully!'

puts 'Registering stocks...'

stocks = [
    {
        stock_name: 'Vale',
        code: 'VALE3',
        logo_url: '/storage/companies/5ed732e52690e.png',
        price: 63.04,
        appreciation: 0.009,
        average_daily_liquidity: 2757374000,
        number_of_papers: 4539007000,
        free_float: 0.9515,
        tag_along: 1,
        company_id: Company.all.first.id
    },
]

stocks.each do |stock|
  Stock.find_or_create_by!(stock)
end

puts 'Stocks registered successfully!'

puts 'Registering dividends...'

dividends = [
    {
      dividend_type: 'jscp',
      cum_date: '11/08/2023',
      ex_date: '01/09/2023',
      payment: 1.9184718,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '12/12/2022',
      ex_date: '22/03/2023',
      payment: 0.292012,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '13/03/2023',
      ex_date: '22/03/2023',
      payment: 1.827646,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '11/08/2022',
      ex_date: '01/09/2022',
      payment: 1.539376,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '11/08/2022',
      ex_date: '01/09/2022',
      payment: 2.03268,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '08/03/2022',
      ex_date: '16/03/2022',
      payment: 3.719256,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '22/09/2021',
      ex_date: '30/09/2021',
      payment: 8.197239,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '23/06/2021',
      ex_date: '30/06/2021',
      payment: 1.47340202,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '23/06/2021',
      ex_date: '30/06/2021',
      payment: 0.71626805,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '04/03/2021',
      ex_date: '15/03/2021',
      payment: 0.835736,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '04/03/2021',
      ex_date: '15/03/2021',
      payment: 3.42591,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '21/09/2020',
      ex_date: '30/09/2020',
      payment: 0.997344,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '21/09/2020',
      ex_date: '30/09/2020',
      payment: 1.410166,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '26/12/2019',
      ex_date: '26/12/2019',
      payment: 1.414364,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '02/08/2018',
      ex_date: '20/09/2018',
      payment: 0.171747,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '02/08/2018',
      ex_date: '20/09/2018',
      payment: 1.308614,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '21/12/2017',
      ex_date: '15/03/2018',
      payment: 0.419912,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '06/03/2018',
      ex_date: '15/03/2018',
      payment: 0.488511,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '20/04/2017',
      ex_date: '28/04/2017',
      payment: 0.905571,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '01/12/2016',
      ex_date: '16/12/2016',
      payment: 0.1663,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '15/10/2015',
      ex_date: '30/10/2015',
      payment: 0.3736,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '14/04/2015',
      ex_date: '30/04/2015',
      payment: 0.6018,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '16/10/2014',
      ex_date: '31/10/2014',
      payment: 0.6508,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '16/10/2014',
      ex_date: '31/10/2014',
      payment: 0.34,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '14/04/2014',
      ex_date: '30/04/2014',
      payment: 0.8989,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '17/10/2013',
      ex_date: '31/10/2013',
      payment: 0.1206,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '17/10/2013',
      ex_date: '31/10/2013',
      payment: 0.8237,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'dividends',
      cum_date: '16/04/2013',
      ex_date: '30/04/2013',
      payment: 0.1536,
      stock_id: Stock.all.first.id
    },
    {
      dividend_type: 'jscp',
      cum_date: '16/04/2013',
      ex_date: '30/04/2013',
      payment: 0.7104,
      stock_id: Stock.all.first.id
    }
  ]

dividends.each do |div|
  Dividend.find_or_create_by!(div)
end

puts 'Dividends registered successfully!'