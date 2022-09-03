class SpicesController < ApplicationController

    def index
        spices = Spice.all
        render json: spices 
    end

    def create
        new_spice = Spice.create(spice_params)
        render json: new_spice, status: :created
    end

    def update
        updated_spice = Spice.find_by(id: params[:id])
        updated_spice.update(spice_params)
        render json: updated_spice
    end

    def destroy
        remove_spice = Spice.find_by(id: params[:id])
        remove_spice.destroy
        head :no_content
    end

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end
end
