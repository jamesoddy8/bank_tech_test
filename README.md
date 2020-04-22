# Bank Tech Test #
```
As a user
So that I can keep a record of my money
I would like to create an account
```
```
As a user
I would like to deposit money into my account
```
```
As a user
I would like to withdraw money from my account
```
```
As a user
So I can see how much money is in my account
I would like to get a statement with date, amount and balance printed
```
```
As a user
I would like to see my balance after transactions
```

# How to run the program #

## First step: ##
```cl
% git clone https://github.com/jamesoddy8/bank_tech_test
% cd bank-tech-test
% bundle
```
## How to test the program ##

While in the root directory:

```
% rspec
```

## How to run the program in IRB ##
```
% irb
> require './lib/account.rb'
> account = Account.new
> account.deposit(1000)
> account.withdraw(750)
> account.withdraw(50)
> account.withdraw(200)
> account.print_statement
```
