class PhotoMemoriesController < ApplicationController
  before_action :set_photo_memory, only: [:show, :edit, :update, :destroy]

  # GET /photo_memories
  # GET /photo_memories.json
  def index
    @photo_memories = PhotoMemory.all
  end

  # GET /photo_memories/1
  # GET /photo_memories/1.json
  def show
  end

  # GET /photo_memories/new
  def new
    @photo_memory = PhotoMemory.new
  end

  # GET /photo_memories/1/edit
  def edit
  end

  # POST /photo_memories
  # POST /photo_memories.json
  def create
    @photo_memory = PhotoMemory.new(photo_memory_params)

    respond_to do |format|
      if @photo_memory.save
        format.html { redirect_to @photo_memory, notice: 'Photo memory was successfully created.' }
        format.json { render :show, status: :created, location: @photo_memory }
      else
        format.html { render :new }
        format.json { render json: @photo_memory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_memories/1
  # PATCH/PUT /photo_memories/1.json
  def update
    respond_to do |format|
      if @photo_memory.update(photo_memory_params)
        format.html { redirect_to @photo_memory, notice: 'Photo memory was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_memory }
      else
        format.html { render :edit }
        format.json { render json: @photo_memory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_memories/1
  # DELETE /photo_memories/1.json
  def destroy
    @photo_memory.destroy
    respond_to do |format|
      format.html { redirect_to photo_memories_url, notice: 'Photo memory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_memory
      @photo_memory = PhotoMemory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_memory_params
      params.require(:photo_memory).permit(:name, :email, :phone, :size, :total, :notes)
    end
end
