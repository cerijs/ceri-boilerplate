# register your component only once
window.customElements.define "ce-component", require "../src/component.coffee"
# createView is a wrapper around the normal ceri wrapper
# which adds structure, watch and tests mixins
createView = require "ceri-dev-server/lib/createView"

# somehow create a view to see your component in action
# will be served by npm run dev
module.exports = createView
  structure: template 1, """
    <input value="world" @input="update"/>
    <br>
    <ce-component :greeting="greeting"></ce-component>
    """
  data: ->
    greeting: "world"
  methods:
    update: (e) -> @greeting = e.target.value
  # tests can be executed by npm run test or npm run watch, to test continuously
  tests: basic: ->
    it "should show Hello world", =>
      @should.have.text "Hello world!"
