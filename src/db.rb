require_relative 'log'

require 'logger'
require 'fileutils'

# Responsible for the persistance of application data.
module DB
  @log = Log.logger
end
