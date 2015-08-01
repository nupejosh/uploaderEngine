Rails.application.routes.draw do

  mount UploadEngine::Engine => "/upload_engine"
end
