#lang racket

(define (isMember item list)
  (cond ((null? list) #f)
        ((eqv? item (car list)) #t) (else(isMember item (cdr list)))))

(define cave '("rocks" "rubies" "diamonds" "wumpus" "gold" "troll"))

;(define (findpath item L) (if (equal? L item)))