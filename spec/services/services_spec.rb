require 'rails_helper'

describe 'SunlightService' do
  it 'filters by attributes for /legislators' do
    legislators = SunlightService.legislators({state: "CO"})
    legislator = legislators.first

    expect(legislators.count).to be(9)
    expect(legislator[:first_name]).to eq("Ken")
    expect(legislator[:last_name]).to eq("Buck")
  end
end
