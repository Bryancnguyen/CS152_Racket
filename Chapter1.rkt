#lang racket
;The first program

(begin
  (display "Hello, World!")
  (newline))

(boolean? #t)
(boolean? "Hellow, World!")
(not #f)
(not #t)
(not "Hello, World!")
(not #f)
(not #t)
(not "Hello, World!")
(number? 42)       
(number? #t)     
(complex? 2+3i)   
(real? 2+3i)       
(real? 3.1416)    
(real? 22/7)      
(real? 42)       
(rational? 2+3i)   
(rational? 3.1416) 
(rational? 22/7)   
(integer? 22/7)   
(integer? 42)


