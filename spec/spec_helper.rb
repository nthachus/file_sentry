require "bundler/setup"
require "file_sentry"
require_relative "../config/environment.rb"
require "pry"

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html,
                                    # :json, CustomFormatterClass


end
