# frozen_string_literal: true

module RVA
  NAME = 'Re-Volt America'
  DESCRIPTION = "Re-Volt America's Official Content Pack"
  YEAR = 22
  MONTH = 5
  DAY = 9
  REVISION = 1
  SUFFIX = 'a'
  VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY}#{SUFFIX}-#{REVISION}"
end
