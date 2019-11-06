#lang racket
;(first '(a b c))
;(car '(a . b)) first do par
; (cdr '(a . b))
;(cadr '(a b c)) o primeiro do resto
;(cddr '((a b c) x y z)), retorna (y z)
;cdar '((a b c) x y z)), retorna (b c)
;(caddar '(((a1 b1 c1) x1 y1 z1) (a b c) x y z)) ,retorna y1

;A operação consretorna uma lista que é a concatenação de uma cabeça com uma cauda
;(cons 'a '(b c)) , retorna (a b c)
;(cons '(a) '(b c)) , retorna ((a) b c)
(define addFun +)
; no console( addFun 4 3)

(define A' (1 ))
(define B' (3 4 ))

(define (sqr2 a) (* a a))

;verifica se é atomo
(define (atom? x)(not (list? x)))
;verifica se não é atomo
(define (non-atom? a) (not (atom? a) ))

(define (atom1? x)(not (or (pair? x) (null? x))))

(define (atom2? x) (not (or (pair? x) (null? x) (vector? x))))

; verifica se a lista só possui atómos
(define (lat? l)
  (cond
    [(null? l) #t]
    [(non-atom? (first l)) #f]
    [else (lat? (rest l))]
  ))

;calcula n elevado a m

(define (^ n m)
  (cond
    [(zero? m) 1]
    [else (* n (^ n (- m 1)))]
  ))

; soma os numeros da lista
(define (sn l)
  (if (null? l)
   0 (+( first l) (sn(rest l))) ))

(define a 0)
(define (sn2 l a)
     (if (null? l)
    a 
    (sn2 (rest l) (+ (first l) a))))
  
;(let [(a 100) (b 50)] (gcd a b)) mmc de 50 e 100

(define (member? a l)
  (cond
    [(null? l) #f]
    [(eq? a (first l)) #t]
    [else (member? a (rest l))]
   )
 )

(define listaa '( 1 2 3 4 5 1))

;remove elemento da lista
(define (rmembro a l)
  (cond
    [(null? l) '()]
    [(eq? a (first l)) (rest l)]
    [else (cons (first l) (rmembro a (rest l)))]
  ))

;remove todos os elementos 'a'
(define (rmembro-todos a l)
  (cond
    [(null? l) '()]
    [(eq? a (first l)) (rmembro-todos a (rest l))]
    [else (cons (first l) (rmembro-todos a (rest l)))]
   ))