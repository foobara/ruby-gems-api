RSpec.describe Foobara::RubyGemsApi::GetVersions do
  let(:command) { described_class.new(inputs) }
  let(:outcome) { command.run }
  let(:result) { outcome.result }
  let(:errors) { outcome.errors }
  let(:errors_hash) { outcome.errors_hash }

  let(:inputs) do
    { gem_name: }
  end

  context "when fetching foobara's versions" do
    let(:gem_name) { "foobara" }

    it "is successful", vcr: { record: :none } do
      expect(outcome).to be_success
      expect(result).to be_an(Array)
    end
  end

  context "when fetching rake's versions" do
    let(:gem_name) { "rake" }

    it "is successful", vcr: { record: :none } do
      expect(outcome).to be_success
      expect(result).to be_an(Array)
    end
  end
end
