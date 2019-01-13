require 'json'
require 'date'

class ParseJson

  attr_accessor :json_file


  def initialize(json_file)
    @json_file = JSON.parse(json_file)
  end

  def get_base
    #return get_base
    json_file["base"]
  end

  def get_date
    date_string = json_file["date"]
    y, m, d = date_string.split '-'
    Date.valid_date? y.to_i, m.to_i, d.to_i
  end

  def get_rate
    json_file["rates"]
  end

  def get_string
    json_file["rates"].all?{|key, value| key.is_a? String}
  end

  def get_integer
     json_file["rates"].all? {|key, value| value.is_a? Float}
  end

end
