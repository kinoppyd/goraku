module Goraku
  class Client
    module Recorded

      def recorded
        get '/recorded.json'
      end

      def recorded_program(program_id)
        get "/recorded/#{program_id}.json"
      end

      def delete_recorded_program(program_id)
        delete "/recorded/#{program_id}.json"
      end

      def recorded_program_file(program_id, format = 'json')
        get "/recorded/#{program_id}/file.#{format}"
      end

      def recorded_program_preview(program_id, format = 'png', options = {})
        raise StandardError.new unless ['png', 'jpg', 'txt'].include?(format)
        default_options = {pos: 7, width: 320, height: 180}
        options = options.merge(default_options)

        get "/recorded/#{program_id}/preview.#{format}", options
      end

      # Not implemented
      def watch_recorded_program(program_id)
        raise NotImplementedError.new
      end
    end
  end
end
