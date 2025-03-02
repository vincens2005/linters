-- mod-version:3
local config = require "core.config"
local linter = require "plugins.linter"

config.revive_args = {}

linter.add_language {
  file_patterns = {"%.go$"},
  warning_pattern = "[^:]:(%d+):(%d+):%s?([^\n]*)",
  command = "revive $ARGS $FILENAME 2>&1",
  args = config.revive_args,
  expected_exitcodes = {0}
}
