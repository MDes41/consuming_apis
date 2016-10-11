class Legislator
  attr_reader :full_name

  def initialize(attrs)
    @attrs = attrs
  end

  def full_name
    "#{attrs[:first_name]} #{attrs[:last_name]}"
  end

  def self.all_by(filter)
    SunlightService.legislators(filter).map do |raw_legislator|
      Legislator.new(raw_legislator)
    end
  end

  private
    attr_reader :attrs
end

# postman
  #Reading docs
  #experiment
#write a test(service)
  #bult it based on postman results
  #array of hashes
    #SRP
#make SunlightService
  #Faraday.get (pasted URL from postman
  #make dynamic
  #figaro for key
  #string interpolation
    #refactor
      #faraday docs
      #block
      #hash of search params
