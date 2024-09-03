module Strategies
  class Create < BaseService
    attr_reader :title, :description
    attr_accessor :code_response, :validate_response

    NOTIFICATION_PARAMS = YAML.load_file("app/services/strategies/prompts.yml").freeze

    def initialize(title, description)
      @title = title
      @description = description
    end

    def call
      Strategy.create!(title:, description:, code:)
    end

    private

    def code
      retrieve_code
      validate_code
      plain_code
    end

    def plain_code
      code_response.results.first.content
    end

    def validate_code
      self.validate_response = gpt_client.completions(messages: messages("validate", plain_code))

      raise "Can't validate code" unless validate_response.present?
      raise gpt_chat_error unless code_valid?
    end

    def gpt_chat_error
      validate_response.results.first.content.split(",").drop(1).join
    end

    def code_valid?
      validate_response.results.first.content.downcase.eql?("yes")
    end

    def retrieve_code
      self.code_response = gpt_client.completions(messages: messages("create", description))

      raise "Can't retrieve code" unless code_response.present?
    end

    def messages(type, content)
      [{ role: "user", content: content(type, content) }]
    end

    def gpt_client
      OpenaiChatgpt::Client.new(api_key: ENV["CHAT_GPT_API_KEY"])
    end

    def content(action, text)
      format(NOTIFICATION_PARAMS[action], { prompt: text })
    end
  end
end
