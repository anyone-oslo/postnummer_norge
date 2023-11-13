# frozen_string_literal: true

require "bundler/gem_tasks"
require "net/http"
require "uri"

desc "Update postal codes"
task :update_codes do
  url = "https://www.bring.no/postnummerregister-ansi.txt"
  content = Net::HTTP.get(URI.parse(url))
  File.write("./lib/postnummer_norge/postal_codes.tab",
             content.force_encoding("iso-8859-1")
                    .encode("UTF-8", universal_newline: true))
end
