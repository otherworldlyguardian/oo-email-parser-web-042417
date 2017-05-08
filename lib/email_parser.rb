require "pry"
class EmailParser
  attr_accessor :unparsed, :parsed

  def initialize(list)
    @unparsed = list
  end

  def parse
    @parsed = @unparsed.split.collect do |email|
      email.split(",")
    end
    @parsed = @parsed.flatten.uniq
  end
end
