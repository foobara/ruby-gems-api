require "foobara/all"
require "foobara/http_api_command"

module Foobara::RubyGemsApi
  foobara_domain!
end

Foobara::Util.require_directory "#{__dir__}/../../src"
