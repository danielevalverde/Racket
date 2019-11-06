#lang racket

(define B '( 1 2 3 4 ))

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

(cons 1 (cons 2 (cons 3 '(4)))) 4

(define (keepEvenNumbers myList)
  (cond [(null? myList) ; verify this list is empty
         '()] ; return empty (base case)
        [(= 1 (modulo (first myList) 2)) ; if the first element is not Even, call the function again an pass rest of list
         (keepEvenNumbers (rest myList))];odd
        [else  ; if is Even 
         (cons (first myList) ;keep the number on the list (concatena o número "certo" com o retorno da chamada recursiva. Think on the stack
               (keepEvenNumbers (rest myList)))])) ; call the function again


(define (incrementAll myList)
  (if (null? myList); verifica se a lista está vazia
      '() ; retorna vazio
      (cons (+ 1 (first myList)) ; tem que concatenar o com o resto da lista SEMPRE.
            (incrementAll (rest myList))))) ; chama o resto da lista pra pegar um por um

(define (remove E L)
  (cond [(null? L)
         '()]
        [(equal? E (first L)) (rest L)]
        [else (const (first L)
                     (copy (rest L)))]))


(define (copy L)
  (if (null? L)
      '() 
      (cons (first L) (copy (rest L)))))

(define (reverse L)
  (if (null? L) '()
      (append (reverse (rest L )) (list (first L)) )))
