#lang scheme
;;;factorial formula
;;;n! is equal to n times (n - 1)! for any positive integer n
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1) )))) 

(factorial 6)

;;;linear iterative or recursion process
(define (factorial2 n)
  (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (if (> counter max-count) product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count) ) )
(factorial2 6)

;;;linear recursion process with internal procedures and substitution
(define (factorial3 n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product)
              (+ counter 1))))
  (iter 1 1))

(factorial3 6)

;;; increment and decrement procedures
(define (inc x) (+ x 1) )
(define (dec x) (- x 1) )

(define (lamda a b)
  (if (= a 0) b (inc (+ (dec a) b) ) ) )

(define (lamda2 a b)
  (if (= a 0) b (+ (dec a) (inc b) ) ) )

(lamda 4 5)
(lamda2 4 5)

;;;Ackermans function
(define (A x y)
(cond ((= y 0) 0)
((= x 0) (* 2 y))
((= y 1) 2)
(else (A (- x 1) (A x (- y 1))))))
(A 5 7)