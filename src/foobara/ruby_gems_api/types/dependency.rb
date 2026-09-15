module Foobara
  module RubyGemsApi
    class Dependency < Foobara::Model
      attributes do
        name :string, :required
        requirements :string, :required
      end
    end
  end
end
