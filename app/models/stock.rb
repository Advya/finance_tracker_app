class Stock < ApplicationRecord
  PUBLISHABLE_TOKEN = Rails.application.credentials.iex_client[:publishable_key]

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: PUBLISHABLE_TOKEN,
      endpoint: 'https://sandbox.iexapis.com/v1'
    )

    client.price(ticker_symbol)
  end
end
