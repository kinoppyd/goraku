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

      def skip_reserved_program(program_id)
        put "/reserves/#{program_id}/skip.json"
      end

      def unskip_reserved_program(program_id)
        put "/reserves/#{program_id}/unskip.json"
      end
    end
  end
end
