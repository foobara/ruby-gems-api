module Foobara
  module RubyGemsApi
    class GetOwners < Foobara::Command
      inputs do
        gem_name :string, :required
      end

      result [User]

      include HttpApiCommand

      url { "https://rubygems.org/api/v1/gems/#{gem_name}/owners.json" }

      # Comment out this three lines when testing new models or looking for new attributes
      def build_result
        response_body.map do |user_attributes|
          User.new(user_attributes, ignore_unexpected_attributes: true)
        end
      end
    end
  end
end
