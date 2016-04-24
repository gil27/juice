class AnalyzerJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    Analyzer.create(query: args[0], user_ip: args[1])
  end
end
