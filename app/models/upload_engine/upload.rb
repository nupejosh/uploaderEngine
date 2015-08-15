class Upload < ActiveRecord::Base
  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/

  def as_json options = { } 
    {      
      id: id,
      created_at: created_at,
      updated_at: updated_at,
      title: title,
      image_link: image_link,
      file_name: file_name,
      file_file_name: file_file_name,
      file_content_type: file_content_type,
      file_file_url: file_file_url,
    } 
  end 
end 
