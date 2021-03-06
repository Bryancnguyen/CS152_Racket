#lang racket

(define-syntax switch
  (syntax-rules ()
    [(switch x ('default exp)) exp]
    [(switch x (y exp)) (if (= x y) exp (void))]
    [(switch x (v1 exp1) rest ...)
     (if (= x v1)
         exp1
     (switch x rest ...))]
))


(define x 99)
(switch x
    [3 (displayln "x is 3")]
    [4 (displayln "x is 4")]
    [5 (displayln "x is 5")]
    ['default (displayln "none of the above")])

