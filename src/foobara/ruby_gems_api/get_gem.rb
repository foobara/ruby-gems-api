module Foobara
  module RubyGemsApi
    class GetGem < Foobara::Command
      inputs do
        gem_name :string, :required
      end

      result Gem

      include HttpApiCommand

      url { "https://rubygems.org/api/v1/gems/#{gem_name}.json" }

      # def build_result
      #   Gem.new(response_body, ignore_unexpected_attributes: true)
      # end
    end
  end
end
