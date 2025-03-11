#lang scheme
;;; compound procedures

;;;e general form of a procedure definition is
;;;(define ( ⟨ name ⟩ ⟨ formal parameters ⟩ )⟨ body ⟩ )


(define (square x) (* x x))

(square 4)
(square 21)
(square (square 3))

;;; use compound procedure to define other procedures
;;; eg:(+ (square x)(square y)))

;;; sum of squares
(define (sum-of-squares x y)
  (+ (square x)(square y)))

(sum-of-squares 3 4)

;;; build of this procedure again

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)