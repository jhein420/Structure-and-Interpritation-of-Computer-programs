#lang scheme
;;;iterative method or recursive cant remeber differences

(define (fuc n)
  (cond ((< n 3) n)
        (else (eep n) ) ) )

;;;function for n >= 3
(define (eep n)
  (+ (- n 1) (* 2 (- n 2)) (* 3 (- n 3) ) )
  )

;;;
(fuc 4)
        