module Alacena
  class Request
    attr_accessor :method

    def initialize(data)
      parse(data)
    end

    private
    def parse(data)
      data =~ /^([\w]+)\ (.*)$/
      @method = $1.downcase.to_sym
    end
  end
end
