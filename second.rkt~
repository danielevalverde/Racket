#lang racket
(define d (cons '1' ( 3 2)))
;chamada d

(define a (list 1 2 ))

(define b (list 3 4))
 ;chamada = b
(define c (append a b))
; chamada = c

(define (copy L)
  (if (null? L)
      '() 
      (cons (first L) (copy (rest L)))))

; (define A '( 1 3 4 )) (define B (copy A)) (equal? A B)

; verificando se dois números são iguais : (eq? 1 1 )

; removendo elementos: (remove 42 '())

; função de remoção de todos os repetidos

(define (remove E L)
  (cond [(null? L) '()]
        [(equal? E (first L)) (rest L) ]
        [else (remove first L)
              (remove E (rest L))]))

;reverse (reverse '()) (reverse '(1 2 3 ))


(define (reverse L)
  (if (null? L) '()
      (append (reverse (rest L )) (list (first L)) )))
