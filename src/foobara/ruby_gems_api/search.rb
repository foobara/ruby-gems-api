require "uri"
require "net/http"

module Foobara
  module RubyGemsApi
    class Search < Foobara::Command
      inputs do
        query :string, :required
      end

      result [Gem]

      include HttpApiCommand

      url "https://rubygems.org/api/v1/search.json"

      def build_request_body
        self.request_body = { query: }
      end

      # Comment out this three lines when testing new models or looking for new attributes
      def build_result
        response_body.map do |gem_attributes|
          Gem.new(gem_attributes, ignore_unexpected_attributes: true)
        end
      end
    end
  end
end
