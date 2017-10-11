class Admin::ReportsController < Admin::AdminController
  before_action :set_report, only: [:show, :edit]

  def index
    @reports = Report.all
  end

  def show
  end

  def new
    @report = Report.new
    @abroad_universities = AbroadUniversity.all
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
end
