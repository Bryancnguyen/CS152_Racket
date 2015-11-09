#lang racket

;; Reverse the order of items in a list.
(define (reverse lst)
  (cond
    [(empty? lst) '()]
    [else
    (append (reverse(cdr lst))(list (car lst)))])
  )

;; Should return '(4 3 2 1)
(reverse '(1 2 3 4))
;1,234
;2,34
;

;; Join two lists together by adding their elements.
;; If one list is longer than the other, add the
;; additional elements to the end of the list.
(define (add-two-lists lst1 lst2)
  [cond
    [(and (empty? lst1)(empty? lst2) '())]
    [(empty? lst1) lst2]
    [(empty? lst2) lst1]
    [else
     [cons(+(car lst1)(car lst2))(add-two-lists (cdr lst1)(cdr lst2))]]]
     
  )

;; Should return '(10 2 5 5 5)
(add-two-lists '(1 2 3 4 5) '(9 0 2 1 0))

;; Should return '(8 6 1)
(add-two-lists '(5 4) '(3 2 1))

;; Should return '(15 17 18 16)
(add-two-lists '(13 14 15 16) '(2 3 3))



;; Return the list with only positive number included.
(define (positive-nums-only lst)
  [cond
    [(empty? lst) '()]
    [else
  (if(> (car lst) 0)
     (cons (car lst)(positive-nums-only (cdr lst)))
     (positive-nums-only (cdr lst)))]])

(positive-nums-only '(1 2 -4 90 -4))
