# frozen_string_literal: true

RSpec.describe Todoer do
  it "has a version number" do
    expect(Todoer::VERSION).not_to be nil
  end

  describe ".configure" do
    it "armazena configurações em Todoer.configuration" do
      Todoer.configure do |config|
        config.todos_host = "http://example.com"
      end
      expect(Todoer.configuration.todos_host).to eq "http://example.com"
    end
  end

end

