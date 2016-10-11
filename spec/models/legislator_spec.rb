require 'rails_helper'

describe "Legislator" do
  context '.all_by(filter)' do
    it 'returns an array of legislators' do
      legislators = Legislator.all_by({state: 'CO'})
      legislator = legislators.first

      expect(legislators.count).to eq(9)
      expect(legislator.full_name).to eq("Ken Buck")
    end
  end
end
