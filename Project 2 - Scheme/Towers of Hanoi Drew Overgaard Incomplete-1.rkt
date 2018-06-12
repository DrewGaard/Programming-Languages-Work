#lang racket
;Drew Overgaard
;Comp 141
;Towers of Hanoi
;I can't figure out how to move elemnts from one part of the list to the other
;I used this website http://stackoverflow.com/questions/5741111/help-explaining-how-cons-in-scheme-work
;as a reference still not to sure how to get the items from one list to the next and print out properly


;Example from slide to find the length of a list
(define (ListLength L) (if (equal? L '())
0 (+ 1 (ListLength (cdr L)))))

;Get the length of the first list in the list of lists (Get the total number of rings)
(define (lengthFirstList L)
  (ListLength(list-ref L 0)))

;Hanoi funtion called by user
(define (hanoi L)
  (main (lengthFirstList L) (list-ref L 0) (list-ref L 1) (list-ref L 2) L))

;First recursive function that gets called by the main function
;This function figures out which ring should be moved and onto which tower it should be placed
(define (main length source dest temp L)
  (cond [(= length 1)
         (print source)
         (display "Now moving ring...")
         (newline)
         (print2 source dest)
         (newline)]
        [else
         (main (- length 1) source dest temp L)
         (print source)
         (display "Now moving ring...")
         (newline)
         (print2 source dest)
         (newline)
         (main (- length 1) temp dest source L)
         ]))

;My printing does not work properly

;I was thinking I could use this function to remove an element from a list
(define (print L)
  (cond [(= (length L) 0)
  (display L)]
        [else
         (display(cdr L))]))

;My thought process here was to combine the items in a list together
(define (print2 L1 L2)
  (cond [(= (length L1) 0)
  (display L1)]
        [else
         (cons L1 L2)]))

;Use to test
(hanoi '((1 2 3) () ()))