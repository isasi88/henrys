require 'test_helper'

class BudgetTest < ActionMailer::TestCase
  test "Mailer" do
    mail = Budget.Mailer
    assert_equal "Mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
