#lang racket

(define (mult-all lst)
	(mult-all-helper lst 1))
(define (mult-all-helper lst acc) 
	(cond [(empty? lst) acc]
		[else (mult-all-helper (cdr lst)
			(* acc (car lst)))]))

(mult-all '(2 3 5))


 (define (max-num lst)
	(cond
		[( = ( length lst ) 1) (car lst)]
		[( < ( car lst) (cadr lst))(max-num (cdr lst))]
	[else
		[max-num(cons (car lst) (cddr lst))]]))

(max-num '(9 0 42 1 6))


