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
    @note.save
    redirect_to notes_path
  end

end
