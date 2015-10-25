module Goraku
  class Client
    module Storage

      def storage
        get '/storage.json'
      end
    end
  end
end
