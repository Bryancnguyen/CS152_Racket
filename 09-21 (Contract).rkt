#lang racket


(define/contract (quicksort lst)
  (-> list? (and/contract list? ordered?)
	(cond [(empty? let) ‘()]
	[else (let* ([pivot (car lst)]
		[p (partition (cdr lst) pivot ‘() ‘())]
		[left (quicksort (car p))]
		[right (quicksort (cdr p))])
		(cons pivot (append left right)))]))) ;error 

(define (ordered? lst
                  (length lst) 2)
  (if (< length lst) 2)
  #t
  (and (<= (car lst) (cadr lst))
       (ordered? (cdr lst))))

;(define/contract (partition lst pivot left right)   ;BROKEN
; (-> list? number? (
;	(if (empty? lst)
;	(cons left right)
;	(let ([x (car lst)])
;	[rest (cdr lst)]))
;	(if (> x pivot)
;	(partition rest pivot (cons x left) right)
;	(partition rest pivot left (cons x right))))))

      
(define (partition lst pivot left right)
   (->i ([the-list list-of-numbers?]
        [the-pivot number?]
        [left-list (the-pivot) (all-less-than? the-pivot)]
        [right-list (the-pivot) (all-greater-than? the-pivot)])
       [result-list (the-pivot) (all-less-than/greater-than? the-pivot)])
  (if (null? lst)
    (cons left right)
    (let ([x (car lst)]
          [rest (cdr lst)])
      (if (< x pivot)
      ;;(if (> x pivot) ;; BROKEN
        (partition rest pivot (cons x left) right)
        (partition rest pivot left (cons x right))))))

(define (all-less-than? pivot)
  (lambda (lst)
    (cond [(not (list? lst)) #f]
          [(empty? lst) #t]
          [else ( and
                  (< car lst) pivot)
                ((all-less-than? pivot)
                 (cdr lst))])))
                             
  


(quicksort '( 9 33 0 1 45 16 8 33))

