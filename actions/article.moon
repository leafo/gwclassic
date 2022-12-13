

import capture_errors, assert_error from require "lapis.application"
import Articles from require "models"

capture_errors =>
  @article = assert_error Articles\find @params.id
  render: true

