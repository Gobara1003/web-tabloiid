class TabloiidsController < ApplicationController
  def index
    @tabloiids = Tabloiid.all
  end

  def new
    @tabloiid = Tabloiid.new
  end

  def create
    file_name = params[:pdf_file].original_filename.chomp('.pdf')
    file_path_name = "pdf/#{Time.now().to_i()}.pdf"

    image_name = params[:image_file].original_filename
    image_path_name = "image/#{Time.now().to_i()}"

    File.binwrite("public/#{file_path_name}", params[:pdf_file].read)

    File.binwrite("public/#{image_path_name}", params[:image_file].read)

    @tabloiid = Tabloiid.new(
      file_name: file_name,
      file_path: file_path_name,
      date: Time.now(),
      image_path: image_path_name
    )

    respond_to do |format|
      if @tabloiid.save
        format.html { redirect_to root_path }
      else
        format.html { render :new }
      end
    end
  end

end
