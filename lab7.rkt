#lang racket

(require racket/contract)

(struct account (balance))

(provide new-account account (contract-out
[balance (-> account? number?)]
[deposit (-> account? positive? account?)]
[withdraw (-> account? positive? account?)]))

;; A new, empty account
(define new-account (account 0))
      
;; Get the current balance
(define (balance acc)
  (account-balance acc))

;; Withdraw funds from an account
(define (withdraw acc amt)
  (account (- (account-balance acc) amt)))

;; Add funds to an account
(define (deposit acc amt)
  (account (+ (account-balance acc) amt)))





;Note that our account struct is immutable -- all operations return a changed structure without modifying the original.  Racket automatically creates some utility functions for your structs -- account-balance is a function that gets the balance field from the account, and account? is a boolean that verifies that you have an account.

;In this lab, you must create contracts to:
;*Verify that only accounts are passed as the first argument to balance, withdraw, and deposit.
;*Verify that only positive numbers are passed as the second argument to withdraw and deposit.
;*Verify that withdraw and deposit return an account.
;*Verify that balance returns a number.
;*Verify that the amount passed to withdraw does not exceed the available funds.

(define my-account new-account)

;; Good examples
(displayln (balance (deposit my-account 40)))
(displayln (balance (withdraw (deposit my-account 40) 25)))

;; Bad examples
;(displayln (balance (deposit my-account -40)))
;(displayln (balance (withdraw (deposit my-account 40) 95)))
;(displayln (balance (deposit my-account "42")))