import Foundation
var array = [BankAccount]()
var bankAccount:BankAccount?
func createAccount(){
    var response:String = "yes"
    while response == "yes" {
        print("Enter your name")
        let name:String = readLine()!
        print("Create number account")
        let numberAccount = readLine()!
        print("Enter first balance")
        let firstAmount = Double(readLine()!)!
        bankAccount = BankAccount(customerName: name, numberAccount: numberAccount, creditCustomer: firstAmount)
        array.append(bankAccount!)
        print("Would you like to continue creating new accounts?")
        response = readLine()!
    }
}
func getAccountInformation(){
    print("Enter number account")
    let account = readLine()!
    for i in array{
        if i.numberAccount == account {
            print("Customer Name : \(i.customerName) \nCustomer Account: \(i.numberAccount) \nBalance: \(i.creditCustomer)")
        }
    }
}

func makeDeposit(){
    var response:String = "yes"
    while response == "yes" {
        print("Enter number account")
        let account:String = readLine()!
        for i in array{
            if i.numberAccount == account{
                print("Enter amount to deposit")
                let deposit:Double = Double(readLine()!)!
                if deposit<=0.01{
                    print("You should deposit only multiple of $0.01 or more.")
                }else{
                    i.creditCustomer += deposit
                    print("CustomerName: \(i.customerName) \n Your current balance is: $\(i.creditCustomer)")
                }
            }
        }
        print("Would you like to continue making deposits")
        response = readLine()!
    }
}
func withdrawMoney(){
    var response = "yes"
    while response == "yes" {
        print("Enter number account")
        let numberAccount:String = readLine()!
        for i in array{
            if i.numberAccount == numberAccount{
                print("Enter a amount to withdraw")
                let amount:Double = Double(readLine()!)!
                if i.creditCustomer <= amount{
                    print("Not enough refunds!")
                }else{
                    i.creditCustomer -= amount
                    print("CustomerName: \(i.customerName) \n Your current balance is: $\(i.creditCustomer)")
                }
            }
        }
        print("Would you like to withdrawing money?")
        response = readLine()!
    }
}