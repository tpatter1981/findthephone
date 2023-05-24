ass PayrollController < ApplicationController
def index
  @payroll = Payroll.all
end

def new
  @payroll = Payroll.new
end

def create
  @payroll = Payroll.new(payroll_params)
  id @payroll.save
  redrirect_to payrolls_path, notice: 'Payroll was successfully created'
else
  render :new
  end
end

private

def payroll_params
  params.require(:payroll).permit(:employee_id, :date, :hours_worked)
  end
end
