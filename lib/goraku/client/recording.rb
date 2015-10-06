module Goraku
  class Client
    module Recording

      def recording
        get '/recording.json'
      end

      def recording_program(program_id)
        get "/recording/#{program_id}.json"
      end

      def stop_recording_program(program_id)
        delete "/recording/#{program_id}.json"
      end

      def recording_program_preview(program_id, format = 'png')
        raise StandardError.new unless ['png', 'jpg', 'txt'].include?(format)
        get "recording/#{program_id}/preview.#{format}"
      end

      # Not implemented
      def watch_recording_program(program_id)
        raise NotImplementedError.new
      end
    end
  end
end
