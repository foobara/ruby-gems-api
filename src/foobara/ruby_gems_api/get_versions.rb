module Foobara
  module RubyGemsApi
    class GetVersions < Foobara::Command
      inputs do
        gem_name :string, :required
      end

      result [Version]

      include HttpApiCommand

      url { "https://rubygems.org/api/v1/versions/#{gem_name}.json" }
    end
  end
end
