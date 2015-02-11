require 'test_helper'

class Alacena::RequestTest < MiniTest::Unit::TestCase
  def test_parse_method
    data = "POST /record/ HTTP/1.1\r\nAccept-Encoding: gzip;q=1.0,deflate;q=0.6,identity;q=0.3\r\nAccept: */*\r\nUser-Agent: Ruby\r\nConnection: close\r\nHost: 127.0.0.1:8080\r\nContent-Length: 20\r\nContent-Type: application/x-www-form-urlencoded\r\n\r\nkey=some-key&value=1"
    @request = Alacena::Request.new(data)

    assert_equal :post, @request.method
  end
end
