#lang racket





(define (max-num lst)
  (cond
    [(=(length lst) 1)(car lst)]
    [(< ( car lst) (cadr lst))(max-num (cdr lst))]
     [else
      [max-num(cons (car lst)(cddr lst))]]))
    
     
         

                 
        

      
  
      
      
      

  
  
;; The function counts from 1 to the specified number, returning a string with the result.
;; The rules are:
;;    If a number is divisible by 3 and by 5, instead say "fizzbuzz"
;;    Else if a number is divisible by 3, instead say "fizz"
;;    Else if a number is divisible by 5, instead say "buzz"
;;    Otherwise say the number
(define (fizzbuzz n)
  (print (fizzbuzz1 1 n)))

;; Helper function for fizzbuzz
(define (fizzbuzz1 i n)
  (print
   (cond 
     ((=(modulo i 15) 0) "fizzbuzz") 
     ((=(modulo i 3) 0) "fizz")
     ((=(modulo i 5) 0) "buzz")
     (else i)))
      (if (< i n)
          [(display #\ )(fizzbuzz1 (+ i 1) n)]
          (exit)))
           
     
     
     
         

     

(max-num '(1 2 3 4 5))
(max-num '(-5 -3 -2 -13))
(fizzbuzz 21)