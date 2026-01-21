# frozen_string_literal: true

require "bundler/gem_tasks"
require "net/http"
require "semantic"
require "uri"

def current_version
  Semantic::Version.new(File.read(File.expand_path("./VERSION", __dir__)))
end

def write_version(version)
  puts "Updating version to #{version}..."
  File.write(File.expand_path("./VERSION", __dir__), version.to_s)
  `bundle`
end

desc "Increment to next patch version"
task "version:patch" do
  write_version(current_version.patch!)
end

desc "Increment to next minor version"
task "version:minor" do
  write_version(current_version.minor!)
end

desc "Increment to next major version"
task "version:major" do
  write_version(current_version.major!)
end

desc "Update postal codes"
task :update_codes do
  url = "https://www.bring.no/postnummerregister-ansi.txt"
  content = Net::HTTP.get(URI.parse(url))
  File.write("./lib/postnummer_norge/postal_codes.tab",
             content.force_encoding("iso-8859-1")
                    .encode("UTF-8", universal_newline: true))
end
