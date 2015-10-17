module Goraku
  class StatusError < StandardError; end
  class Status400 < StatusError; end
  class Status401 < StatusError; end
  class Status402 < StatusError; end
  class Status403 < StatusError; end
  class Status404 < StatusError; end
  class Status405 < StatusError; end
  class Status409 < StatusError; end
  class Status410 < StatusError; end
  class Status415 < StatusError; end
  class Status500 < StatusError; end
  class Status501 < StatusError; end
  class Status503 < StatusError; end
end
