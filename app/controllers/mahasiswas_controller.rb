class MahasiswasController < ApplicationController
  before_action :set_mahasiswa, only: %i[ show edit update destroy ]

  # GET /mahasiswas or /mahasiswas.json
  def index
    @mahasiswas = Mahasiswa.all
  end

  # GET /mahasiswas/1 or /mahasiswas/1.json
  def show
  end

  # GET /mahasiswas/new
  def new
    @mahasiswa = Mahasiswa.new
  end

  # GET /mahasiswas/1/edit
  def edit
  end

  # POST /mahasiswas or /mahasiswas.json
  def create
    @mahasiswa = Mahasiswa.new(mahasiswa_params)

    respond_to do |format|
      if @mahasiswa.save
        format.html { redirect_to mahasiswa_url(@mahasiswa), notice: "Mahasiswa was successfully created." }
        format.json { render :show, status: :created, location: @mahasiswa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mahasiswa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mahasiswas/1 or /mahasiswas/1.json
  def update
    respond_to do |format|
      if @mahasiswa.update(mahasiswa_params)
        format.html { redirect_to mahasiswa_url(@mahasiswa), notice: "Mahasiswa was successfully updated." }
        format.json { render :show, status: :ok, location: @mahasiswa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mahasiswa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mahasiswas/1 or /mahasiswas/1.json
  def destroy
    @mahasiswa.destroy

    respond_to do |format|
      format.html { redirect_to mahasiswas_url, notice: "Mahasiswa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mahasiswa
      @mahasiswa = Mahasiswa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mahasiswa_params
      params.require(:mahasiswa).permit(:nama, :alamat, :umur)
    end
end
