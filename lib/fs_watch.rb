require 'fsevent'

class FsWatch < FSEvent
  attr_accessor :cmd
  
  def on_change(directories)
    system self.cmd
  end
end
