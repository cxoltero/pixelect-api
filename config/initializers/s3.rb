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


#to add the images in nested form we need to add some information to the controllers.
# go to
# https://u.osu.edu/hasnan.1/2014/03/30/rails-4-multiple-file-upload-with-carrierwave-nested-form-and-jquery-file-upload/
# for more info
