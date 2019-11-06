#lang racket
(quote atomo)

(define (avg x y)
  (quotient (+ x y)
  2) )


(define (warm temp)
  (if (> temp 75)
     "warm"
      "cold"))

(define (cool temp)
  (cond
    [(> temp 75)"hot"]
    [(< temp 65) "cold"]
    [else "ok"]))


(define (spam)
  (let ([a 4]
        [b 3])
    (+ a b ) ))

(define (fac N)
  (if (< N 2 )
      1
     (* N (fac ( - N 1) ))))


(list '(1 2 3) '( 4 5 6) )

(append '(1 2 3) ' (4 5 6) )

(append '("spam") '(42) )

(append '("spam" '() ) )

(append '() '("spam") )

(append '("spam") '(()) )

(append '((())) '("spam")  )

(cons 1 '(2 3) )

(cons 1 (cons 2 (cons 3 '(4)))) 


