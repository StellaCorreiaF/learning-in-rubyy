# frozen_string_literal: true

require_relative "todoer/version"
require_relative "todoer/task"

module Todoer
  class Error < StandardError; end

  class << self
    def configure
      @config = Configuration.new
      yield(@config)
    end

    def configuration
      @config
    end

    class Configuration
      attr_accessor :todos_host
    end
  end
end
