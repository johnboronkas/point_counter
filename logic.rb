require 'logger'

# Responsible for the business logic of the endpoints.
module Logic
  # Log files will roll when they reach 100MB, keeping only 5 logs at a time.
  FileUtils.mkdir_p 'logs'
  @log = Logger.new('logs/app.log', 5, 100 * 1024 * 1024)
  @log.level = Logger::DEBUG

  def self.logger
    @log
  end

  def self.all_points
    logger.debug 'getting all points'
  end

  def self.update_points(team, adjust_amount)
    logger.debug "#{team} got #{adjust_amount} points"
  end
end
