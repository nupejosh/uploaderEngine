require_dependency "upload_engine/application_controller"

module UploadEngine
  class UploadController < ApplicationController
    def index
      @uploads = Upload.all
      if @uploads
        render json: {:uploads => @uploads}
      else
        render json: {:errors => 'No uploads found'}, :status => 404
      end
    end

    def show
      @uploads = Upload.find(params[:id])
      render json: {:uploads => @uploads}
    end

    def create
      @uploads = Upload.create(upload_params)
      if @uploads.save
        render json: {:uploads => @uploads}
      else
        render :json => { :errors => @uploads.errors.full_messages }, :status => 422
      end
    end

    def update
      @uploads = Upload.find(params[:id])
      if @uploads.update!(upload_params)
        render json: {:uploads => @uploads}
      else
        render :json => { :errors => @uploads.errors.full_messages }, :status => 422
      end
    end

    def destroy
      @uploads = Upload.find(params[:id])
      if @uploads.destroy!
        render json: {:uploads => @uploads}
      else
        render :json => { :errors => @uploads.errors.full_messages }, :status => 422
      end
    end

    protected

    def upload_params
      # add your column list here
      params.require(:upload).permit(
        :id,
        :created_at,
        :updated_at,
        :title,
        :image_link,
        :file_name,
        :file_file_name,
        :file_content_type,
        :file_file_url
      )
    end
  end 
end
