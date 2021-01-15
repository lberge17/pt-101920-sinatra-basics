class NotesController < ApplicationController
    # set :views, Proc.new { File.join(root, "../views/notes") }
    
    get '/notes' do
        @notes = Note.all
        erb :"notes/index"
    end

    get '/notes/new' do
        erb :"notes/new"
    end

    post '/notes' do
        @note = Note.create(title: params["title"], content: params["content"])
        redirect "/notes"
    end

end