#lang racket

;Can run test by calling hanoi with the populated list in the first space
;(hanoi '((1 2) () ()))
;(hanoi '((1 2 3) () ()))
;(hanoi '((1 2 3 4) () ()))

;Function that gets called by the user
(define (hanoi L)
  (printf "~a~n~n" (main (lengthFirstList L) 1 (finalTower L) (towerMoveTo L) L)) 
)

;Example from slide to find the length of a list
(define (ListLength L) (if (equal? L '())
0 (+ 1 (ListLength (cdr L)))))

;Finds the final tower returns 1 2 or 3 based on the length of the lists passed in by the user
(define (finalTower L)
  (cond [(= (length (car L)) 0) 1][(= (length (car(cdr L))) 0) 2][else 3]
  )
)

;Get the length of the first list in the list of lists (Get the total number of rings)
(define (lengthFirstList L)
  (ListLength(list-ref L 0)))

;Finds the tower to move the current disk to based on the list length like finalTower
(define (towerMoveTo L)
  (cond [(= (length (car L)) 0)(cond [(= (length (car(cdr L))) 0) 2] [else 3])]
        [else 3]
  )
)

;Main function that recursivly runs while the counter variable is greater than 1
(define (main counter startingPeg pegMoveTo interimPeg L)
  (cond [(= counter 1) (displayTowers startingPeg pegMoveTo L)]
        [else
         (main (counterTracker counter) interimPeg pegMoveTo startingPeg (displayTowers startingPeg pegMoveTo (main (sub1 counter) startingPeg interimPeg pegMoveTo L)))]))

;Keeps track of the counter variable and subtracts 1 each time the function is called
(define (counterTracker counter)
  (sub1 counter))

;Print out the list
(define (printList L)
  ((printf "~a~n" L)))

;Displays the current layout of towers based on the current and final towers
(define (displayTowers startingPeg pegMoveTo L)
  (cond [(and (= startingPeg 1) (= pegMoveTo 2))
         (printf "~a~n" L)
         (list (cdr(car L)) (cons (car (car L)) (car(cdr L))) (car(cdr (cdr L))))]
        [(and (= startingPeg 1) (= pegMoveTo 3))
         (printf "~a~n" L)
         (list (cdr(car L)) (car(cdr L)) (cons (car (car L)) (car(cdr(cdr L)))))]
        [(and (= startingPeg 3) (= pegMoveTo 2))
         (printf "~a~n" L)
         (list (car L) (cons (car(car(cdr(cdr L)))) (car(cdr L))) (cdr(car(cdr(cdr L)))))]
        [(and (= startingPeg 2) (= pegMoveTo 3))
         (printf "~a~n" L)
         (list (car L) (cdr(car(cdr L))) (cons (car(car(cdr L))) (car(cdr(cdr L)))))]
        [(and (= startingPeg 3) (= pegMoveTo 1))
         (printf "~a~n" L)
         (list (cons (car(car(cdr(cdr L)))) (car L)) (car(cdr L))  (cdr(car(cdr(cdr L)))))]
        [(and (= startingPeg 2) (= pegMoveTo 1))
         (printf "~a~n" L)
         (list (cons (car(car(cdr L))) (car L)) (cdr(car(cdr L)))  (car(cdr (cdr L))))]
  )
)