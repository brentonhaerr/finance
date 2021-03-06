class Stock < ApplicationRecord
  
  #self defines a class method rather than an instance method
  def self.new_lookup(ticker_symbol)
      client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex[:sandbox_publishable_token],
                                    endpoint: 'https://sandbox.iexapis.com/v1')
      client.price(ticker_symbol)
  end

end
