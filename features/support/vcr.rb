VCR.configure do |config|
  config.ignore_localhost = true
  config.cassette_library_dir = "features/vcr_cassettes"
  config.hook_into :webmock 
end