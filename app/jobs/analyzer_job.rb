class AnalyzerJob < ActiveJob::Base
  queue_as :default

  def perform(**args)
    Analyzer.create(query: args[:query], user_ip: args[:user_ip])
  end
end
