class FetchStockDataJob
  def call(stock)
    stock_data = {}

    formatted_urls(stock).each do |url|
      stock_data[url[:field]] = FetchUrlService.new.call(url[:uri])
    end

    stock_data
  end

  private

  def formatted_urls(stock)
    fetch_urls = Rails.application.config.fetch_urls

    fetch_urls.map do |url|
      field = url['field']
      uri = url['url']
      id_name = url['id_name'].to_sym

      raise "Missing field: #{id_name}" if stock[id_name].nil?

      uri = uri.gsub('$', stock[id_name])

      { 'field': field, 'uri': uri }
    end
  end
end
