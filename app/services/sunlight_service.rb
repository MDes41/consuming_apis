class SunlightService
  def self.legislators(filter)
    response = conn.get '/legislators', filter
    parsed = JSON.parse(response.body, symbolize_names: true)[:results]
  end

  def self.conn
    Faraday.new(:url => 'http://congress.api.sunlightfoundation.com') do |faraday|
      faraday.adapter  Faraday.default_adapter
      faraday.params[:apikey] = ENV['sunlight_api_key']
    end
  end
end
