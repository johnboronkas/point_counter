require_relative 'log'
require_relative 'persistance'

# Responsible for the business logic of the endpoints.
module Logic
  @log = Log.logger

  # Gets all points as a map from data persistance.
  def self.all_points
    @log.debug 'getting all points'
    Persistance.all
  end

  # Creates a new team or adjusts the points of the provided team and returns
  # the updated map.
  def self.update_points(team, adjust_amount)
    @log.info "#{team} got #{adjust_amount} points"
    current_points = Persistance.get team
    Persistance.set team, current_points.to_i + adjust_amount
  end
end
