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
        company_id: Company.all.first
    },
]

stocks.each do |stock|
  Stock.find_or_create_by!(stock)
end

puts 'Stocks registered successfully!'