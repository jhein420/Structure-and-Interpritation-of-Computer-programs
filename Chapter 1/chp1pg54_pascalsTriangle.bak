#lang scheme
;;;pascals triangle
;;; factorial function
(define (fac n)
  (if (= n 1)
      1
      (* n (fac (- n 1) ))))

;;;procedure for finding value of element of pascals triangle where " n choose k "
(define (pte n k) (/ (fac n) (* (fac k) (fac (- n k)) ) ) )

;;;test
(pte 4 2)