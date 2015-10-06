module Goraku
  class Client
    module Rules

      def rules
        get '/rules.json'
      end

      def rule(rule_num)
        get "/rules/#{rule_num}.json"
      end

      def update_rule(rule_num, rule)
        put "/rules/#{rule_num}.json", rule
      end

      def delete_rule(rule_num)
        delete "/rules/#{rule_num}.json"
      end

      def rule_enable(rule_num)
        put "/rules/#{rule_num}/enable.json"
      end

      def rule_disable(rule_num)
        put "/rules/#{rule_num}/disable.json"
      end

      def add_rule(rule)
        post '/rules.json', rule
      end
    end
  end
end
