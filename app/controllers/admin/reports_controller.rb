class Admin::ReportsController < Admin::AdminController
  before_action :set_report, only: [:show, :edit, :update]
  before_action :set_abroad_university, only: [:new, :edit]

  def index
    @reports = Report.all
  end

  def show
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(target_params)
    if @report.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @report.update(target_params)
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def target_params
    params.require(:report).permit(
      :name,
      :abroad_university_id
    )
  end

  def set_report
    @report = Report.find(params[:id])
  end

  def set_abroad_university
    @abroad_universities = AbroadUniversity.all
  end
end
