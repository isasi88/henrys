class BudgetMailer < ActionMailer::Base
  default from: "Your Mailer <hola@benditapizza.es>"
  default to: "Kike <kikeisasi@gmail.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.budget.Mailer.subject
  #
  def new_budget(budget)
    @budget = budget
    
    mail subject: "Mensaje de #{budget.name}"
  end

end
