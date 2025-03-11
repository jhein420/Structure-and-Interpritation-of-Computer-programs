#lang scheme
;;;square roots by newtons method
;;;With internal definitions,nesting definition or block structure
;;;us, it is not necessary to pass x explicitly to each of these procedures as it is in the scope of sqrt procedure

(define (sqrt x)
  (define (good-enough? guess )
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess ) (average guess (/ x guess)))
  (define (sqrt-iter guess )
    (if (good-enough? guess )
        guess
        (sqrt-iter (improve guess ) )))
  (sqrt-iter 1.0 ))

;;;help
(define (average x y)
(/ (+ x y) 2))
(define (square x) (* x x))

;;;test
(sqrt 9)