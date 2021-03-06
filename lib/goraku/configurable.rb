module Goraku
  module Configurable

    attr_reader :api_endpoint, :login, :password
    attr_reader :connection_options, :middleware, :proxy
    attr_reader :raise_error
    class << self
      def keys
        @keys || [
          :api_endpoint,
          :login,
          :password,
          :connection_options,
          :middleware,
          :proxy,
          :raise_error
        ]
      end
    end

    def configure
      yield self
    end

    def api_endpoint
      File.join(@api_endpoint, "")
    end
  end
end
