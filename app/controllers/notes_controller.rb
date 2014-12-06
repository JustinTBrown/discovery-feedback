class NotesController < ApplicationController
  # before_action :all_notes, :new_note, only: [:index, :create]
  # # before action :new_note, only: [:index]
  # respond_to :html, :js

  def index
    @notes = Note.all
    # @note = Note.new
  end

  def new
    @note = Note.new
  end

  def create
    # @note = Note.new
    @note = Note.create(note_params)
    # @note.text = params[:note][:text]
    # @note.text = params
    @note.colour = rand(1..10) 
    @note.likes = rand(0..21)
    @note.save
    # redirect_to notes_path
    respond_to do |format|
      format.html { redirect_to notes_path }
      format.js
    end
  end

  def add_like
    @note = Note.find(params[:id])
    @note.likes += 1
  end

  private

    # def all_notes
    #   @notes = Note.all
    # end

    # def new_note
    #   @note = Note.new
    # end

    def note_params
      params.require(:note).permit(:text)
    end

end
