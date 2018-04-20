require_relative 'log'

require 'logger'
require 'fileutils'
require 'json'

# Responsible for the persistance of application data.
module Persistance
  @log = Log.logger
  @file_path = 'data/points.json'
  @tmp_points = {} # TODO: Remove this when files are up and working.

  # {:hello => "goodbye"}.to_json
  # JSON.generate(my_hash)

  # Gets all records as a key-value-pair map.
  def self.all
    read
  end

  # Gets a specific record, nil if key doesn't exist.
  def self.get(key)
    read[key]
  end

  # Sets a specific record, creates if key doesn't exist.
  def self.set(key, value)
    data = read
    data[key] = value
    write(data)
  end

  # Reads the data store and returns the data as a map.
  def self.read
    # File.open(file_path, 'r') do |file| end
    @tmp_points.clone # TODO: Remove
  end

  # Writes the provided map to the data store and returns the map.
  def self.write(map)
    backup_data_file

    @tmp_points = map

    # File.open(file_path, 'w') do |file|
    #   file.write(map.to_json)
    # end
  end

  # Backs up the data store to avoid data loss.
  def self.backup_data_file
  end

  private_class_method :read, :write, :backup_data_file
end
