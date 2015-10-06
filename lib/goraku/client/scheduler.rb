module Goraku
  class Client
    module Scheduler

      def scheduler
        get '/scheduler.json'
      end

      def exec_scheduler
        put '/scheduler.json'
      end

      def force_scheduler
        put '/scheduler/force.json'
      end
    end
  end
end
