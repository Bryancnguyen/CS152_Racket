#lang racket


(define (reverse-list lst)
  (reverse-list-helper lst '()))

(define (reverse-list-helper lst acc)
  [cond
   [(empty? lst) acc]
   [else
   [reverse-list-helper (cdr lst) (cons (car lst) acc)]]])





(require racket/contract)

(define (sorted? lst)
  (cond ((= 1 [length lst]) #t)
        [(> (abs (car lst)) (abs (car (cdr lst)))) #f]
        [else (sorted? (cdr lst))]))

(define (sorted lst)
  '(1 -2 8 -4 5 -6))


(provide (contract-out
  [sorted (-> list? sorted?)]))

(sorted '(1))

