#lang racket

(define (conct l1 l2)
  (cond
    [(null? l1) l2]
    [(null? l2) l1]
    [else (cons (first l1) (conct (rest l1) l2))]))

(define (rg n)
  (cond
    [(= 0 n) '()]
    [else (cons n (rg (- n 1)))]))

(define (rgI n)
  (rgaux n 1))
(define (rgaux n m)
  (cond
    [(= n m) (cons m '())]
    [else (cons m (rgaux n (+ m 1)))]))

(define (addFinal n l)
  (cond
    [(null? l) (cons n l)]
    [else (cons (first l) (addFinal n (rest l)))]))

(define (inv l (l2 '()))
  (cond
    [(null? l) l2]
    [else (inv (rest l) (cons (first l) l2))]))

(define (parear E L)
  (cond
    [(null? L) L]
    [else (cons (list E (first L)) (parear E (rest L)))]))

(define (member1 X L)
  (cond
    [(null? L) #f]
    [(= (first L) X) #t]
    [else (member1 X (rest L))]))

(define (pares l)
  (cond
   [(null? l) l]
   [(null? (rest l)) '()]
   [else (append (parear (first l) (rest l)) (pares (rest l)))]))

(define (conj l)
  (cond
    [(null? l) #t]
    [else (and (not(member (first l) (rest l))) (conj (rest l)))]))

(define (pref l1 l2)
  (cond
    [(null? l1) #t]
    [(null? l2) #f]
    [(not(= (first l1) (first l2))) #f]
    [else (pref (rest l1) (rest l2))]))

(define (subs l1 l2)
  (cond
    [(null? l1) #f]
    [(null? l2) #f]
    [(pref l1 l2) #t]
    [else (subs l1 (rest l2))]))

(define (rgD n [i 1])
  (cond
    [(< n 1) '()]
    [else (cons i (rgD (- n 1) (+ i 1)))]))

(define (cria-ll l [i 1])
  (cond
    [(null? l) l]
    [else (cons (rgD (first l) i) (cria-ll (rest l) (+ i (first l))))]
    ))