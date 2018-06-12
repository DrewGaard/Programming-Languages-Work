#lang racket

;Example from slide
(define (ListLength L) (if (equal? L '())
0 (+ 1 (ListLength (cdr L)))))

;Number 1 Last
(define (Last L)
  (car (reverse '(L) )))

;Number 2 Palindrome
(define (Palindrome L)
  (if (equal? L (reverse L))#t #f))

;Number 3 Sumtuple
(define (Sumtuple L L2)
  ((if ListLength null? (+ (car'(L)) (car'(L2))))))