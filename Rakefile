# frozen_string_literal: true

require 'json'

require_relative 'data'

task :default => %i[version]

task :version => %i[version_rva_cars version_rva_tracks version_rva_lego_tracks] do
  rva_cars_json = File.read('rva_cars/packages.json')
  rva_tracks_json = File.read('rva_tracks/packages.json')
  rva_lego_tracks_json = File.read('rva_lego_tracks/packages.json')

  rva_cars_hash = JSON.parse(rva_cars_json)['rva_cars']
  rva_tracks_hash = JSON.parse(rva_tracks_json)['rva_tracks']
  rva_lego_tracks_hash = JSON.parse(rva_lego_tracks_json)['rva_lego_tracks']

  contents = [
    '{',
    "\t\"name\": \"#{RVA::NAME}\",",
    "\t\"version\": \"#{RVA::VERSION}\",",
    "\t\"packages\": {",
    "\t\t\"rva_cars\": {",
    "\t\t\t\"description\": \"#{rva_cars_hash['description']}\",",
    "\t\t\t\"version\": \"#{rva_cars_hash['version']}\",",
    "\t\t\t\"checksum\": \"#{rva_cars_hash['checksum']}\",",
    "\t\t\t\"url\": \"#{rva_cars_hash['url']}\"",
    "\t\t},",
    "\t\t\"rva_tracks\": {",
    "\t\t\t\"description\": \"#{rva_tracks_hash['description']}\",",
    "\t\t\t\"version\": \"#{rva_tracks_hash['version']}\",",
    "\t\t\t\"checksum\": \"#{rva_tracks_hash['checksum']}\",",
    "\t\t\t\"url\": \"#{rva_tracks_hash['url']}\"",
    "\t\t},",
    "\t\t\"rva_lego_tracks\": {",
    "\t\t\t\"description\": \"#{rva_lego_tracks_hash['description']}\",",
    "\t\t\t\"version\": \"#{rva_lego_tracks_hash['version']}\",",
    "\t\t\t\"checksum\": \"#{rva_lego_tracks_hash['checksum']}\",",
    "\t\t\t\"url\": \"#{rva_lego_tracks_hash['url']}\"",
    "\t\t}",
    "\t}",
    '}'
  ]

  File.open('packages.json', 'w+') do |f|
    contents.each { |l| f.puts(l) }
  end
end

task :version_rva_cars do
  system('cd rva_cars && rake version')
end

task :version_rva_tracks do
  system('cd rva_tracks && rake version')
end

task :version_rva_lego_tracks do
  system('cd rva_lego_tracks && rake version')
end
