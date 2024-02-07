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