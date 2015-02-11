require 'eventmachine'

module Alacena
  class Server < EventMachine::Connection
    class << self
      attr_accessor :binding, :port
    end

    def receive_data(data)
      response = Alacena::Parser.new(data)

      send_data        response
      close_connection true
    end

    def self.start
      EventMachine.run do
        EventMachine.start_server binding, port, self
      end
    end
  end
end
