module Goraku
  class Client
    module Status

      def status
        get "/status.json"
      end

    end
  end
end
