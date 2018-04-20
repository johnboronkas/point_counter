require 'logger'
require 'fileutils'

# Responsible for maintaining application logs.
module Log
  # Log files will roll when they reach 100MB, keeping only 5 logs at a time.
  FileUtils.mkdir_p 'logs'
  @log = Logger.new('logs/app.log', 5, 100 * 1024 * 1024)
  @log.level = Logger::DEBUG

  def self.logger
    @log
  end
end
