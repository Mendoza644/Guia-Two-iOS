import Foundation
class BankAccount {
    var customerName : String
    var numberAccount : String
    var creditCustomer: Double
    init(customerName : String, numberAccount : String, creditCustomer : Double) {
        self.creditCustomer = creditCustomer
        self.customerName = customerName
        self.numberAccount = numberAccount
    }
}
