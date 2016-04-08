module Controller
  class List
    get "/list" do
      erb :"lists/index"
    end
  end
end
