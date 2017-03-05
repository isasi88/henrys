class BudgetsController < ApplicationController

  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budget_params)
    
    if @budget.valid?
      BudgetMailer.new_budget(@budget).deliver
      redirect_to root_path, notice: "Enviado"
    else
      flash[:alert] = "Error"
      redirect_to contacto_path
    end
  end

private

  def budget_params
    params.require(:budget).permit(:name, :email, :content)
  end

end