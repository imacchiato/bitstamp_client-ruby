FactoryGirl.define do

  factory :bitstamp_client_order_book, class: "BitstampClient::OrderBook" do
    timestamp { Time.now.to_i }

    bids do
      [
        FactoryGirl.build(:bitstamp_client_order),
        FactoryGirl.build(:bitstamp_client_order),
      ]
    end

    asks do
      [
        FactoryGirl.build(:bitstamp_client_order),
        FactoryGirl.build(:bitstamp_client_order),
      ]
    end
  end

  factory :bitstamp_client_order, class: "BitstampClient::Order" do
    rate { 2500 }
    volume { 2 }
  end

end
