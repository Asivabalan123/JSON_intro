describe "Testing the exchange rates" do
  before(:all) do
      @api_key = ENV['FIXER_API_KEY']
      @exchange_rates = ParseJson.new(HTTParty::get("http://data.fixer.io/api/latest?access_key=#{@api_key}").body)
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
    expect(@exchange_rates.get_rate.length).to eq 168
  end

  it "should return an array" do
    expect(@exchange_rates.get_rate.values).to be_kind_of(Array)
  end

  it "rates should return string" do
    expect(@exchange_rates.get_string).to eq true
  end


  it "checks all the exchange values is a type integer" do
    expect(@exchange_rates.get_integer).to eq false
  end

end
