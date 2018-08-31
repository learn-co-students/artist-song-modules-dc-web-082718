require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

@@songs = []
  def self.all
    @@songs
  end

  # def initialize
  #   super
  #   # @@songs << self
  # end

  def artist=(artist)
    @artist = artist
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end


  # def self.reset_all
  #   @@songs.clear
  # end
  #
  # def self.count
  #   self.all.count
  # end

  def to_param
    name.downcase.gsub(' ', '-')
  end


end
