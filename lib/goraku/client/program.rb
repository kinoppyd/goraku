module Goraku
  class Client
    module Program

      def program(id)
        get "/program/#{id}.json"
      end

      def reserve_program(id)
        put "/program/#{id}.json"
      end
    end
  end
end
