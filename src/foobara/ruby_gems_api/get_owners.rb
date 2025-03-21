module Foobara
  module RubyGemsApi
    class GetOwners < Foobara::Command
      inputs do
        gem_name :string, :required
      end

      result [User]

      include HttpApiCommand

      url { "https://rubygems.org/api/v1/gems/#{gem_name}/owners.json" }
    end
  end
end
