# frozen_string_literal: true

$LOAD_PATH.unshift "."
require "config/environment"

# Rack fix allows seeing the css folder.
use Rack::Static, urls: ["/css"], root: "public"

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise "Migrations are pending run `rake db:migrate` to resolve the issue."
end

use FiguresController
use LandmarksController
run ApplicationController
