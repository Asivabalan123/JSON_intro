describe "Testing the exchange rates" do
  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
end

it "should be a hash" do
  expect(@exchange_rates.json_file).to be_kind_of(Hash)
end

it "should be a euro" do
  expect(@exchange_rates.get_base).to eq'EUR'
end

it "should be a valid date" do
  expect(@exchange_rates.get_date).to eq true
end

it "should have 31 currencys in rates" do
  expect(@exchange_rates.get_rate.length).to eq 31
end

it "should return an array" do
  expect(@exchange_rates.get_rate.values).to be_kind_of(Array)
end

it "rates should return string"
  expect(@exchange_rates.get_string).to eq true
end

it "checks all the exchange values is a type integer" do
  expect(@exchange_rates.get_integer).to eq true
end
