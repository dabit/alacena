require 'bundler'

Bundler.require :development

require 'alacena'

Before do
  @endpoint = "http://127.0.0.1:8080"
end
