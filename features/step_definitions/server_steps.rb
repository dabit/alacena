Given(/^the alacena server has started$/) do
  Alacena::Server.port    = 8080
  Alacena::Server.binding = "0.0.0.0"
  Thread.new do
    Alacena::Server.start
  end
end
