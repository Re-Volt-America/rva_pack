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

  module RVACars
    NAME = 'rva_cars'
    DESCRIPTION = "Re-Volt America's Cars Pack"
    YEAR = 22
    MONTH = 8
    DAY = 17
    REVISION = 3
    SUFFIX = 'a'
    VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY}#{SUFFIX}-#{REVISION}"
    URL = 'https://distribute.revolt-america.com/rva/rva_cars.zip'
  end

  module RVATracks
    NAME = 'rva_tracks'
    DESCRIPTION = "Re-Volt America's Tracks Pack"
    YEAR = 22
    MONTH = 8
    DAY = 17
    REVISION = 3
    SUFFIX = 'a'
    VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY}#{SUFFIX}-#{REVISION}"
    URL = 'https://distribute.revolt-america.com/rva/rva_tracks.zip'
  end

  module RVALegoTracks
    NAME = 'rva_lego_tracks'
    DESCRIPTION = "Re-Volt America's Lego Tracks Pack"
    YEAR = 22
    MONTH = 4
    DAY = 26
    REVISION = 2
    SUFFIX = 'a'
    VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY}#{SUFFIX}-#{REVISION}"
    URL = 'https://distribute.revolt-america.com/rva/rva_lego_tracks.zip'
  end
end
