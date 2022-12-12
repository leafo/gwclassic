lapis = require "lapis"

class extends lapis.Application
  "/": =>
    import Articles from require "models"
    tostring Articles\count!


