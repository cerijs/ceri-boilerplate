# the wrapper creates a ES5 class and calls ceri on it
ceri = require "ceri/lib/wrapper"
# the component
module.exports = ceri
  mixins: [
    require "ceri/lib/props"
    require "ceri/lib/structure"
    require "ceri/lib/computed"
  ]
  props:
    greeting: 
      type: String
      default: "World"
  computed:
    cGreeting: -> "Hello #{@greeting}!"
  structure: template 1, """
    <span :text=cGreeting></span>
  """