# Bank Tech Test

Makers on-sight course week 10 first tech test

## Table of Contents

* [Description](#description)
* [User Stories](#user-stories)
* [Approach](#approach)
* [Technologies](#technologies)
* [How To Use](#how-to-use)
* [Sources](#sources)

## Description

* You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

## User Stories

    As a Client
    So I can put money in my account
    I would like to be able to make deposits

  <br>

    As a Client
    So I can take money out my account  
    I would like to be able to make withdrawals

  <br>

    As a Client
    So I can see my account history  
    I would like to be able to see a statement
    with the date, amount and resulting balance
    in my account from my transactions

## Approach

  A TDD approach was taken for the project. Initially requirements where transformed into user stories and then subsequently feature tests where written and solved.

  Three classes where used to enable separation of responsibilities. An  Account class was created to contain the logic for executing transactions, i.e. deposits and withdrawals, a Bank class for recording transactional data and a Client class for interacting with the two other classes.

## Technologies

* Ruby 2.7.0
* RSpec 3.9

## How To Use

![Alt text](./Screenshot.png?raw=true "Screenshot")

### Install Dependencies
  * run ```bundle install```

### Testing and Development
  * run RSpec and SimpleCov from ```/Bank``` run ```rspec```
  * run rubocop from ```/Bank``` run ```rubocop```

### Core Functionality
* Launch in repl: ```irb -r ./lib/client.rb```  
* Create client named (name): ```name = Client.new```  
* Make a deposit of amount (20): ```name.deposit(20)```
* Make a withdrawal of amount (10): ```name.withdrawal(10)```
* View account statement: ```name.statement```

### Extended Functionality
  * Create client with initial acount balance (100): ```name = Client.nw(Account.new(100))```
  * Specify date of deposit (day/month/year): ```name.deposit(20, '18/01/2020')```
  * Specify date of withdrawal (day/month/year): ```name.withdrawal(10, '18/01/2020')```

## Sources

[Github tech test outline](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md)
