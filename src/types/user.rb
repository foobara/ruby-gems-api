module Foobara
  module RubyGemsApi
    class User < Foobara::Model
      attributes do
        id :integer, :required
        handle :string, :required
        email :string
        role :string, :required, one_of: [:owner, :maintainer]
      end
    end
  end
end
