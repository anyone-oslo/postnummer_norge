= PostnummerNorge

Ruby gem for looking up Norwegian postal codes.

== Usage

 include PostnummerNorge

 PostalCode.exists?('0662')                    # => true
 PostalCode.find('0662').name                  # => 'OSLO'
 PostalCode.find_by_name('HUNDVÅG').first.code # => '4085'