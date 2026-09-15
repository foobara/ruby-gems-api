module Foobara
  module RubyGemsApi
    class Gem < Foobara::Model
      attributes do
        documentation_uri :string, :allow_nil
        metadata do
          homepage_uri :string, :allow_nil
          rubygems_mfa_required :boolean
          changelog_uri :string, :allow_nil
          source_code_uri :string, :allow_nil
          allowed_push_host :string, :allow_nil
        end
        homepage_uri :string, :allow_nil
        funding_uri :string, :allow_nil
        bug_tracker_uri :string, :allow_nil
        project_uri :string
        version :string
        sha :string
        platform :string
        changelog_uri :string, :allow_nil
        source_code_uri :string, :allow_nil
        licenses [:string]
        gem_uri :string
        downloads :integer
        mailing_list_uri :string, :allow_nil
        name :string
        wiki_uri :string, :allow_nil
        version_downloads :integer
        info :string, :allow_nil
        authors :string
        # For some reason, Search does not include this so not making it required for now
        version_created_at :datetime # , :required
        # This attribute is not documented so not sure of its type
        ruby_abi :duck
        # For some reason, Search does not include this so not making it required for now
        yanked :boolean # , :required
        # For some reason, Search does not include this so not making it required for now
        spec_sha :string # , :required
        dependencies do
          development [Dependency], :required
          runtime [Dependency], :required
        end
      end
    end
  end
end
