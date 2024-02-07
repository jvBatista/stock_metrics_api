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
