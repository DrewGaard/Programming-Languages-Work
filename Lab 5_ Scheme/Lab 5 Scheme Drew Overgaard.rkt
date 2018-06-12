#lang racket

;Example from slide
(define (ListLength L) (if (equal? L '())
0 (+ 1 (ListLength (cdr L)))))

;Number 1 firstN
(define (firstN L n)
  (cond ((= 0 n) '())
        (else (cons (car L) (firstN (- n 1) (cdr L))))))

;Number 2 restN
(define (restN L n)
  (cond ((= 0 n) L)
        (else (restN (cdr L) (- n 1)))))

;Number 3 tuplesize
(define (tuplesize L n)
  (ListLength L)
        ((firstN L n) tuplesize (restN L n) n))

;Number 4 Combine
(define (Combine L n)
  (* L n))

;Number 5 Step
;(define (Step f g thresh x))

;toZero
;(define (toZero z))

;Number 6 applyOp
;(define data '(1 2 3 4 5))


