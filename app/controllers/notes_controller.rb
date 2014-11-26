class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new
    @note.text = params[:note][:text]
    @note.colour = rand(1..10) 
    @note.likes = rand(0..21)
    @note.save
    redirect_to notes_path
  end

  def like
    # 
  end

end
