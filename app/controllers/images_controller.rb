class ImagesController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "papa", except: [:index, :show]
def index
@image = Image.all
end

def create
  @image = Image.new(image_params)
  @image.save
  redirect_to @image
end

def new

@image = Image.new
end

def show
 @image = Image.find(params[:id])
end
private
def image_params

params.require(:image).permit(:title,:image)
 end
end
