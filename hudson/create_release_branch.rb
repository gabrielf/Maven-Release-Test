#!/usr/bin/env ruby

ignore, major_version, minor_version, path_version = File.read("../pom.xml").match(/<version>(\d*)\.(\d*)\.(\d*)-SNAPSHOT<\/version>/).to_a

branch_name = "#{major_version}.#{minor_version}"
next_development_version = "#{major_version}.#{minor_version.to_i + 1}.0-SNAPSHOT"

puts "mvn -B release:branch -DbranchName='#{branch_name}' -DdevelopmentVersion='#{next_development_version}'"
