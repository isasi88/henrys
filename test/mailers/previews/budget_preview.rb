# Preview all emails at http://localhost:3000/rails/mailers/budget
class BudgetPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/budget/Mailer
  def Mailer
    Budget.Mailer
  end

end
