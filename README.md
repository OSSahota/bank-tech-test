# bank tech test

This is a ruby program forming part of a tech test to practice OO design principles and TDD skills.



## Specification

### Requirements

* The user should be able to interact with the code via a REPL like IRB. Don't need to implement a command line interface that takes input from STDIN.
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Technologies applied

* Ruby 2.5.1
* RSpec for testing code
* SimpleCov for code coverage


### User stories

```
As a customer
So that I can save for the future
I want to be able to deposit money into my account
```

```
As a customer
So that I can pay my bill
I want to be able to withdraw money from my account
```

```
As a customer
So that I can see how much money I have in my account
I want to be able to see my account balance
```

```
As a customer
So that I can see my all of incomings and outgoings over a given time period
I want to be able to print a statement of all my transactions showing the date, amount and balance at the time
```


### Running the program

Follow the steps below to run the program

* To open irb type the command ```irb``` in the terminal
* Now enter the following commands;
  * acc = Account.new
  * acc.deposit("10/01/2012",1000)
  * acc.deposit("13/01/2012",2000)
  * acc.withdraw("14/01/2012",500)
  * acc.print_statement
  * This will output list of transactions similar to example shown under the Acceptance criteria section
  * Type exit to close irb
