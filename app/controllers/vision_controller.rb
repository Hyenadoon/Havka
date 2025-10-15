# app/controllers/vision_controller.rb
class VisionController < ApplicationController
  def new
    # простая форма для загрузки файла
  end

  def analyze
    file = params[:image]

    if file.blank?
      flash[:alert] = "Пожалуйста, выберите изображение"
      return redirect_to new_vision_path
    end

    @result = FoodAnalyzerService.analyze(file)

    respond_to do |format|
      format.html { render :new }
      format.turbo_stream { render partial: "results", locals: { result: @result } }
      format.json { render json: @result }
    end
  end
end













