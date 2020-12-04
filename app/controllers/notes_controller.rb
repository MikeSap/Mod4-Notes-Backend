class NotesController < ApplicationController


    def index
        
    end


    def show

    end


    def create        
        note = Note.new(note_params)
        return render json: {errors: note.errors.full_messages}, status: 401 unless note.save
        render json: note
    end


    def update
        note = Note.find(params[:note_id])
        note.update(note_params)      
        render json: note      
    end


    def destroy
        Note.destroy(params[:id])
        render json: {deletedNote: params[:id]}
    end

    private
    
    def note_params
        params.require(:note).permit("title", "content", "user_id")
    end

end
