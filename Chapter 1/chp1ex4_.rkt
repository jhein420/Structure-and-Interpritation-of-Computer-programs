#lang scheme
;;; conditional expressions and predicates

;;;case analysis

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x) ) ) )

;;; alt method
(define (abs2 x)
  (cond ( (< x 0) (- x)) (else x) ) )

;;; alt method 2
(define (abs3 x) (if (< x 0) (- x) x) )
;;; special forms and , or not

(abs 3)
