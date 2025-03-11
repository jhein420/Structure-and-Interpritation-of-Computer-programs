#lang scheme
;;;cube roots by newtons method
;;; guessig until it is right lol
;;; for any given x and a guess y, a formula exists like
(define (improveguess x guess) (/ (+ (/ x (square guess))  (* 2 guess) ) 3) )

;;;check if the guess is close to real value of root
(define (goodenough guess x) (< (/ (abs (- (cube guess) x)) guess) 0.001) ) 

;;;iterate over guess values to get to the approximate value of cube root
(define (cube-iter guess x) (if (goodenough guess x) guess (cube-iter (improveguess guess x) x) ) )

(define (cuberoot x) (cube-iter 1.0 x))

;;;functions for help
(define (average x y)(/ (+ x y) 2))
(define (cube x) (* x x x) )
(define (square x) (* x x))

;;;test
(cuberoot 81)