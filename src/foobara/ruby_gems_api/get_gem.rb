module Foobara
  module RubyGemsApi
    class GetGem < Foobara::Command
      inputs do
        gem_name :string, :required
      end

      result Gem

      include HttpApiCommand

      url { "https://rubygems.org/api/v1/gems/#{gem_name}.json" }

      # Comment out this three lines when testing new models or looking for new attributes
      def build_result
        Gem.new(response_body, ignore_unexpected_attributes: true)
      end
    end
  end
end
