#lang scheme
;;;Exercise 1.3 pg 55
;;; check which of 2 numbers are larger and return it
(define (max x y) (cond ( (> x y) (x)) (else y) ) )

;;; check which of 2 numbers are smaller and return it
(define (min x y) (cond ( (< x y) x) (else y) ) )

;;; squares numbers
(define (square x) (* x x))

;;; sum of the squares of the 2 largest numbers
(define (sumofsquares x y)
   (+ (square x)(square y))
  )

;;;which of any three numbers is the biggest

(define (_max3 x y z)
  (cond ( (> (max x y) z) (max x y) ) (else z) )
  )

;;;which of any three numbers is the smallest
(define (min3 x y z) (cond ( (< (min x y) z) (min x y) ) (else z) ) )

;;;simple solutions combine into this one
(define (sol a b c)
  (cond ( (= (min3 a b c) a) (sumofsquares b c) ) (else (sumofsquares a c) ) )
  )

(sol 12 31 42)