get '/' do
    @photos = Photo.all.reverse
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/upload' do
  p params
 #  p "ji" * 50
 #  p params
 #  p "trt" *50
 #  p params[:photo][:photo]
   p @photo = Photo.new(image: params[:photo][:photo])
 #  # @photo = Photo.new(params[:photo])
    @photo.save!
 # p @photo 
   redirect '/'
end

