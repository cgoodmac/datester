class PhotosController < ApplicationController
	def index
		@photos = Photo.all
	end

	def show
		photo_id = params[:id]
		@photo = Photo.find(photo_id)
	end

	def new
		@photo = Photo.new
	end

	def edit
		@photo = Photo.find(params[:id])
	end

	def create
		@photo = Photo.new(params[:photo])
		if @photo.save
			redirect_to photos_path
		else 
			render :new
			# stay on the form page
		end
	end

	def update
		@photo = Photo.find(params[:id])
		if @photo.update_attributes(params[:photo])
			redirect_to @photo
		else
			render :edit	
		end
	end

	def destroy
		photo = Photo.find(params[:id])
		photo.delete
		redirect_to photos_path
	end
end