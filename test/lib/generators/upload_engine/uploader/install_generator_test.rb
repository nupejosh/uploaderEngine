require 'test_helper'
require 'generators/uploader/install/install_generator'

module UploadEngine
  class Uploader::InstallGeneratorTest < Rails::Generators::TestCase
    tests Uploader::InstallGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
