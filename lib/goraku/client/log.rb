module Goraku
  class Client
    module Log

      def operator_log
        get '/log/operator.txt'
      end

      def wui_log
        get '/log/wui.txt'
      end

      def scheduler_log
        get '/log/scheduler.txt'
      end
    end
  end
end
