# frozen_string_literal: true

require_relative "lib/google_maps_pb_decoder/version"

Gem::Specification.new do |spec|
  spec.name = "google_maps_pb_decoder"
  spec.version = GoogleMapsPbDecoder::VERSION
  spec.authors = ["Yicheng Zhou"]
  spec.email = ["zyc9012@gmail.com"]

  spec.summary = "A Google Maps pb (protobuf) parameter decoder."
  spec.description = "A Google Maps pb (protobuf) parameter decoder."
  spec.homepage = "https://github.com/serpapi/google-maps-pb-decoder"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 1.9"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.files  = Dir.glob("lib/**/*.rb")
  spec.bindir = "exe"
  spec.executables = ["google_maps_pb_decoder"]
  spec.require_paths = ["lib"]
end
