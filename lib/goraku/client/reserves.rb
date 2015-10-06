module Goraku
  class Client
    module Reserves

      def reserves
        get '/reserves.json'
      end

      def reserves_program(program_id)
        get "/reserves/#{program_id}.json"
      end

      def delete_reserved_program(program_id)
        delete "/reserves/#{program_id}.json"
      end
    end
  end
end
