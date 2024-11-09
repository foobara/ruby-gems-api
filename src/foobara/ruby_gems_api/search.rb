require "uri"
require "net/http"

module Foobara
  module RubyGemsApi
    class Search < Foobara::Command
      inputs do
        query :string, :required
      end

      result [Gem]

      include HttpApiGetCommand

      url "https://rubygems.org/api/v1/search.json"

      def build_request_body
        self.request_body = { query: }
      end
    end
  end
end
