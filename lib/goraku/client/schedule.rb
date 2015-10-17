module Goraku
  class Client
    module Schedule

      def schedule
        get '/schedule.json'
      end

      def schedule_programs
        get '/schedule/programs.json'
      end

      def schedule_broadcasting
        get '/schedule/broadcasting.json'
      end

      def schedule_channel(channel_id)
        get "/schedule/#{channel_id}.json"
      end

      def schedule_channel_programs(channel_id)
        get "/schedule/#{channel_id}/programs.json"
      end

      def schedule_channel_broadcasting(channel_id)
        get "/schedule/#{channel_id}/broadcasting.json"
      end
    end
  end
end
