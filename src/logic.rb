require_relative 'log'

# Responsible for the business logic of the endpoints.
module Logic
  @log = Log.logger

  def self.all_points
    @log.debug 'getting all points'
  end

  def self.update_points(team, adjust_amount)
    @log.info "#{team} got #{adjust_amount} points"
  end
end
