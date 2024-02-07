# frozen_string_literal: true

require 'net/http'

class FetchUrlService
  def call(uri)
    url = URI.parse(uri)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = (url.scheme == 'https')

    request = Net::HTTP::Get.new(url)

    response = http.request(request)

    if response.code == '200'
      data = JSON.parse(response.body)
      return data
    end

    raise "Request failed with status code: #{response.code}"
  end
end
