#lang racket
;Here's a functin to increment a value
(define  (increment x) (+ 1 x))
;Here's a function to add two values
(define (sum x y) (+ x y))

;Here's a function to decrement a value
(define (decrement x) (- x 1))

;Here's a function to square a value
(define (square x) (* x x))

;Here's a function to see if a number is even
(define (even x) (if (= (modulo x 2) 0) #t #f))

;Here's a function that takes two positive numbers and returns the larger of the two
(define (larger x y) (if (> x y) x y))

;Here's a function that takes three positive numbers and returns the largest of the three without using an if expression
(define (largest x y z) (cond (larger x y) (larger x z)) x y z)
