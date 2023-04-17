# spec/fedex_rates_spec.rb
require "spec_helper"
require "fedex_rates"

RSpec.describe Fedex::Rates do
  let(:credentials) do
    {
      key: ENV['FEDEX_KEY'],
      password: ENV['FEDEX_PASSWORD'],
      account_number: ENV['FEDEX_ACCOUNT_NUMBER'],
      meter_number: "119238439"
    }
  end

  let(:quote_params) do
    {
      address_from: {
        zip: "64000",
        country: "MX"
      },
      address_to: {
        zip: "64000",
        country: "MX"
      },
      parcel: {
        length: 25.0,
        width: 28.0,
        height: 46.0,
        distance_unit: "cm",
        weight: 6.5,
        mass_unit: "kg"
      }
    }
  end

  # Testing public method get
  describe ".get" do
    it "returns an array of shipping rates" do
      rates = Fedex::Rates.get(credentials, quote_params)

      expect(rates).to be_an(Array)
      expect(rates).not_to be_empty
      expect(rates.first).to include("price", "currency", "service_level")
    end
  end
end
