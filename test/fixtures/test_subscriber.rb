class TestSubscriber
  include Resque::Plugins::Pubsub::Subscriber

  subscribe 'test_topic'

  class << self

    def read_test_topic_message(message)
      @last_message = message
    end

    def last_message
      @last_message
    end

  end

end