module Foobara
  module RubyGemsApi
    class GetVersions < Foobara::Command
      inputs do
        gem_name :string, :required
      end

      result [Version]

      include HttpApiCommand

      url { "https://rubygems.org/api/v1/versions/#{gem_name}.json" }

      # Comment out this three lines when testing new models or looking for new attributes
      def build_result
        response_body.map do |version_attributes|
          Version.new(version_attributes, ignore_unexpected_attributes: true)
        end
      end
    end
  end
end
