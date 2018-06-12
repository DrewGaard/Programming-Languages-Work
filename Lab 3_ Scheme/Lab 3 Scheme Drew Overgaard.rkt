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

;Here's a function that takes three positive numbers and returns the largest of the three without using an if expression
(define (largest2 x y z) (larger x (larger y z)))
;This one is the correct one!

;Here's a function to get the anser of a value to a power of
(define (pow a b)
  (if (= b 0)
      1
      (* a (pow a (- b 1)))))

;Here's a function to get the factorial of a number
(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

;What do the following return? Slide 14
;1 This will return 1
(car '(1 8 17))

;2 This will return '(8 17)
(cdr '(1 8 17))

;3 This will return '(1 8) (first item in the outermost list)
(car '((1 8) (17 22)))

;4 This will return 8
(car (cdr '(1 8 17)))

;5 This will return 'cdr ( 'cdr is part of the list)
(car '(cdr (1 8 17)))

;Lists of Lists - Slide 15
;1 This will print 'a
(caar '((a b) (c d)))

;2 This will print 'c
(cadr '((a b) c d))

;3 This will print '(c d)
(cadr '((a b) (c d)))

;4 This will print '()
(cddr '((a b) (c d)))

;5 This will print 'b
(cadar '((a b) (c d)))

;6 This will print '(b)
(cdar '((a b) (c d)))

;7 This will print '(z)
(cdaadr '(x ((y z) q) (a b) c))










