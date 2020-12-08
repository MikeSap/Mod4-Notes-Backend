class NotesController < ApplicationController
    skip_before_action :require_login

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
        params.permit("title", "content", "user_id", "photo")
    end

end
