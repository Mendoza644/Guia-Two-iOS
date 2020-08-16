import Foundation
print("Welcome to UDB e-Bank")
var response : String
response = "yes"
while response == "yes"{
    print("To start press an option \n 1. Create a Bank Account \n 2. Make a Remittance \n 3. Withdraw from Account \n 4. Get all accounts")
    let option = Int(readLine()!)!
    switch option {
    case 1: createAccount()
    case 2: makeDeposit()
    case 3: withdrawMoney()
    case 4: getAccountInformation()
    default: print("This option is not available in our system")
    }
print("Would you like to continue?")
    response = readLine()!
}