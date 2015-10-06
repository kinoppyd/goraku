module Goraku
  module Authentication

    def basic_authenticated?
      !!(@login && @password)
    end
  end
end
