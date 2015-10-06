require 'sawyer'

require 'goraku/configurable'
require 'goraku/authentication'

require 'goraku/client/program'
require 'goraku/client/recorded'
require 'goraku/client/recording'
require 'goraku/client/reserves'
require 'goraku/client/rules'
require 'goraku/client/schedule'
require 'goraku/client/scheduler'

module Goraku
  class Client

    include Goraku::Configurable
    include Goraku::Authentication

    include Goraku::Client::Program
    include Goraku::Client::Recorded
    include Goraku::Client::Recording
    include Goraku::Client::Reserves
    include Goraku::Client::Rules
    include Goraku::Client::Schedule
    include Goraku::Client::Scheduler

    def initialize(options = {})
      Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || Goraku.instance_variable_get(:"@#{key}"))
      end
    end

    def get(path, options = {})
      request :get, path, options
    end

    def put(path, options = {})
      request :put, path, options
    end

    def delete(path, options = {})
      request :delete, path, options
    end

    def root
      get '/'
    end

    def inspect
      inspected = super
      inspected.gsub! @password, "*****" if @password
    end

    private

    # HTTP client
    #
    # @return [Sawyer::Agent]
    def agent
      @agent ||= Sawyer::Agent.new(api_endpoint, sawyer_options) do |http|
        http.headers['content-type'] = 'application/json'
        if basic_authenticated?
          http.basic_auth(@login, @password)
        end
      end
    end

    def request(method, path, data, options = {})
      agent.call(method, URI::Parser.new.escape("/api#{path.to_s}"), data, options).data
    end

    def sawyer_options
      opts = {
        :links_parser => Sawyer::LinkParsers::Simple.new
      }
      conn_ops = @connection_options
      conn_ops[:builder] = @middleware if @middleware
      conn_ops[:proxy] = @proxy if @proxy
      opts[:faraday] = Faraday.new(conn_ops)

      opts
    end
  end
end
