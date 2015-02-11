Given(/^I make the POST request to URI "(.*?)" with data "(.*?)"$/) do |uri, data|
  @response = HTTParty.post(@endpoint + uri, body: data)
end

Then(/^the server should respond with "(.*?)"$/) do |response|
  assert_equal response, @response.parsed_response
end

When(/^I make the GET request "(.*?)"$/) do |uri|
  @response = HTTParty.get(@endpoint + uri)
end
