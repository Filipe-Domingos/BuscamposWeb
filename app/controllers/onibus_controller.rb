class OnibusController < ApplicationController
  before_action :set_onibu, only: [:show, :edit, :update, :destroy]

  # GET /onibus
  # GET /onibus.json
  def index
    @onibus = Onibu.all
  end

  # GET /onibus/1
  # GET /onibus/1.json
  def show
  end

  # GET /onibus/new
  def new
    @onibu = Onibu.new
  end

  # GET /onibus/1/edit
  def edit
  end

  # POST /onibus
  # POST /onibus.json
  def create
    @onibu = Onibu.new(onibu_params)

    respond_to do |format|
      if @onibu.save
        format.html { redirect_to @onibu, notice: 'Onibu was successfully created.' }
        format.json { render :show, status: :created, location: @onibu }
      else
        format.html { render :new }
        format.json { render json: @onibu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /onibus/1
  # PATCH/PUT /onibus/1.json
  def update
    respond_to do |format|
      if @onibu.update(onibu_params)
        format.html { redirect_to @onibu, notice: 'Onibu was successfully updated.' }
        format.json { render :show, status: :ok, location: @onibu }
      else
        format.html { render :edit }
        format.json { render json: @onibu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onibus/1
  # DELETE /onibus/1.json
  def destroy
    @onibu.destroy
    respond_to do |format|
      format.html { redirect_to onibus_url, notice: 'Onibu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onibu
      @onibu = Onibu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def onibu_params
      params.require(:onibu).permit(:placa, :empresa_id, :num_assento, :assento_especial)
    end
end
