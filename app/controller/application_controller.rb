class ApplicationController < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views") }

    get '/' do
        erb :index
    end

    post '/notes' do
        @note = params["note"]
        erb :notes
    end

end