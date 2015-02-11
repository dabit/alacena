module Alacena
  class Parser
    attr_accessor :request

    def initialize(data)
      p data
      @request = Alacena::Request.new(data)
    end
  end
end
