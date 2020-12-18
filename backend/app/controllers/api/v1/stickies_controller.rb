class Api::V1::StickiesController < ApplicationController
   
    def index
    @stickies = Sticky.all
    render json: @stickies.as_json(only: [:id, :body, :important]), status: 200
    end

    def show
        @sticky = Sticky.find_by(id: params[:id])
        render json: @sticky.as_json(only: [:id, :body, :important]), status: 200
    end

    def create
        @sticky = Sticky.create(sticky_params)
        render json: @sticky.as_json(only: [:id, :body, :important]), status: 200
    end
 
    def destroy
        @sticky = Sticky.delete_by(id: params[:id])
        @stickies = Sticky.all
        render json: @stickies.as_json(only: [:id, :body, :important]), status: 200
    end
    private

    def sticky_params
        params.require(:sticky).permit(:params,:id,:body,:important)
end
end






