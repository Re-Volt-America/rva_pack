# frozen_string_literal: true

module RVA
  NAME = 'Re-Volt America'
  DESCRIPTION = "Re-Volt America's Official Content Pack"
  YEAR = 25
  MONTH = 8
  DAY = 25
  REVISION = 1
  SUFFIX = 'a'
  VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY < 10 ? "0#{DAY}" : DAY}#{SUFFIX}-#{REVISION}"

  module RVACars
    NAME = 'rva_cars'
    DESCRIPTION = "Re-Volt America's Cars Pack"
    YEAR = 25
    MONTH = 8
    DAY = 25
    REVISION = 1
    SUFFIX = 'a'
    VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY < 10 ? "0#{DAY}" : DAY}#{SUFFIX}-#{REVISION}"
    URL = 'https://distribute.rva.lat/rva/rva_cars.zip'
  end

  module RVATracks
    NAME = 'rva_tracks'
    DESCRIPTION = "Re-Volt America's Tracks Pack"
    YEAR = 25
    MONTH = 8
    DAY = 25
    REVISION = 1
    SUFFIX = 'a'
    VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY < 10 ? "0#{DAY}" : DAY}#{SUFFIX}-#{REVISION}"
    URL = 'https://distribute.rva.lat/rva/rva_tracks.zip'
  end

  module RVALegoTracks
    NAME = 'rva_lego_tracks'
    DESCRIPTION = "Re-Volt America's Lego Tracks Pack"
    YEAR = 25
    MONTH = 4
    DAY = 14
    REVISION = 1
    SUFFIX = 'a'
    VERSION = "#{YEAR}.#{MONTH < 10 ? "0#{MONTH}" : MONTH}#{DAY < 10 ? "0#{DAY}" : DAY}#{SUFFIX}-#{REVISION}"
    URL = 'https://distribute.rva.lat/rva/rva_lego_tracks.zip'
  end
end
