require "rubygems"
require "hlds_log_parser"

class Formatter
  def initialize(data)
    # will 'puts' the translated content
    HldsLogParser::HldsDisplayer.new(data).display_translation
  end
end


## These are default options
options = {
  :locale              => :en,
  :display_kills       => true,
  :display_actions     => true,
  :display_changelevel => true,
  :displayer           => HldsLogParser::Formatter
}

parser = HldsLogParser::Client.new("127.0.0.1", 27035, options)
parser.connect
