package = "gwclassic"
version = "dev-1"

source = {
 url = "git+ssh://git@github.com/leafo/gwclassic.git"
}
description = {
 homepage = "https://leafo.net/gwtemp",
 license = "All Rights Leafo"
}

dependencies = {
  "lapis",
  "lapis-eswidget",
  "lapis-systemd",
  "lapis-annotate",
  "web_sanitize",
  "tableshape"
}

build = {
 type = "none"
}
