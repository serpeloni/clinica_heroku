class DoctorsController < ApplicationController
  before_action :set_doctor, only: [ :show, :edit, :update, :destroy ]

  # GET /doctors
  def index
    @doctors = Doctor.all
  end

  # GET /doctors/1
  def show
    #@doctor = Doctor.find(params[:id])
  end

  # GET /doctors/new
  def new
    @doctor = Doctor.new
  end

  # GET /doctors/1/edit
  def edit
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to @doctor, notice: "Médico criado."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctors/1
  def update
    if @doctor.update(doctor_params)
      redirect_to @doctor, notice: "Médico atualizado."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /docs/1 or /docs/1.json
  def destroy
    @doctor.destroy
    redirect_to doctors_url, notice: "Médico Excluído."
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end


  def doctor_params
    params.require(:doctor).permit(:name, :email, :crm, :specialty_id)
  end
end
