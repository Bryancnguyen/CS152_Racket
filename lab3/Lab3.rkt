#lang racket


(define (strings-to-nums lst)
         (cond [(empty? lst) '()]
               [else
              (map string->number lst)]))


(strings-to-nums '("1" "2"))

(define (reverse-list lst)
        (foldl cons '() lst))

(reverse-list '(3 2 1))  