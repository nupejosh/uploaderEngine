class Uploader::InstallGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  inject_into_file 'upload.rb', after: "class Upload < ActiveRecord::Base \n" do <<-'RUBY'
  has_many #{plural_name}
  RUBY
  end   

  migration_template "migration.rb", "db/migrate/add_#{name}_id_to_bar.rb"

  def migration_data
    <<RUBY
      ## Resource Relationship
      t.integer :#{name}_id,  
RUBY
  end      
end
