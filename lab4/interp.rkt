#lang racket

;; Expressions in the language
(struct b-val (v))
(struct b-if (c thn els))
(struct b-succ (n))
(struct b-pred (exp))

;; Main evaluate method
(define (evaluate prog)
  (match prog
    [(struct b-val (v)) v]
    [(struct b-if (c thn els))
     (if (evaluate c)
         (evaluate thn)
         (evaluate els))]
    [(struct b-succ (exp))
     (let ([n (evaluate exp)])
       (if (number? n)
           (+ n 1)
           (error "needed int, got bool")))]
    [(struct b-pred (exp))
     (let ([v (evaluate exp)])
       (if (number? v)
           (- v 1)
           (error "needed int, got bool")))]))
    

(evaluate (b-val #t))
(evaluate (b-val #f))
(evaluate (b-if (b-val #t)
                (b-if (b-val #f) (b-val #t) (b-val #f))
                (b-val #f)))
(evaluate (b-succ 5))
(evaluate (b-pred 5))


;Extend the Bool* language that we discussed in class.

;Add support for numbers, the succ operator, and the pred operator.

;Submit your modified code.