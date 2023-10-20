# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "google_maps_pb_decoder/version"

Gem::Specification.new do |spec|
  spec.name = "google_maps_pb_decoder"
  spec.version = GoogleMapsPbDecoder::VERSION
  spec.authors = ["Yicheng Zhou"]
  spec.email = ["zyc9012@gmail.com"]

  spec.summary = "Google Maps pb (protobuf) parameter decoder."
  spec.description = "This gem decodes the protobuf parameters used in Google Maps into readable JSON for easy inspection and debugging."
  spec.homepage = "https://github.com/serpapi/google-maps-pb-decoder"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 1.9"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = spec.homepage
  end

  spec.files  = Dir.glob("lib/**/*.rb")
  spec.bindir = "exe"
  spec.executables = ["google_maps_pb_decoder"]
  spec.require_paths = ["lib"]
end
