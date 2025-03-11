#lang scheme
;;; counting change example pg51
;;;It takes only a bit of cleverness to come up with the iterative Fibonacci algorithm. In contrast, consider the following problem:
;;;How many different ways can we make change of $1.00, given half-dollars, quarters,dimes, nickels, and pennies? More generally, can we write a procedure
;;;to compute the number of ways to change any given amount of money?
;;;is problem has a simple solution as a recursive procedure. Suppose we think of the types of coins available as arranged in some order.
;;;en the following relation holds: e number of ways to change amount a using n kinds of coins equals
;;;the number of ways to change amount a using all but the first kind of coin, plus
;;the number of ways to change amount a - d using all n kinds of coins, where d is the denomination of the first kind of coin.
;;; If a is exactly 0, we should count that as 1 way to make change.If a is less than 0, we should count that as 0 ways to make change.
;;; If n is 0, we should count that as 0 ways to make change.

;;;tree-recursive process with redundancies
(define (count-change amount) (cc amount 5))

;;;process
(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount
                     (- kinds-of-coins 1))
                 (cc (- amount
                        (first-denomination
                         kinds-of-coins))
                     kinds-of-coins)))))

;;;takes number of kinds of coins as input and returns type of coin
(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

(count-change 100)