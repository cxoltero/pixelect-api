CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider                => 'AWS',
    :aws_secret_key_id       => ENV['S3_KEY'],
    :aws_secret_access_key   => ENV['S3_SECRET'],
#    :region                  => ENV['S3_REGION'] #change this for different AWS region,
    #default region is 'us-east1'
  }

  config.fog_directory  = ENV['S3_BUCKET']
end
