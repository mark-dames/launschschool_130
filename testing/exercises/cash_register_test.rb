require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    @transaction = Transaction.new(55)
    @cash_register = CashRegister.new(500)
    total_before_payment = @cash_register.total_money
    @transaction.amount_paid = 100
    @cash_register.accept_money(@transaction)
    total_after_payment = @cash_register.total_money
    assert_equal(total_before_payment + 100, total_after_payment)
  end
  
  def test_change
    @transaction = Transaction.new(85)
    @transaction.amount_paid = 100
    @cash_register = CashRegister.new(500)
    assert_equal(15, @cash_register.change(@transaction))
  end
  
  def test_display_receipt
    @cash_register = CashRegister.new(500)
    @transaction = Transaction.new(150)
    assert_output("You've paid $150.\n") {@cash_register.give_receipt(@transaction)}
  end
end