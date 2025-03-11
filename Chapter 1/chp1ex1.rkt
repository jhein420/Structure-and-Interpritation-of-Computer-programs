#lang scheme
;;; comment
;;; basic arithmetic operations
(+ 13 45)
(- 45 23)
(* 33 2)
(/ 20 2)
(+ (- 30 10) (/ 6 2))

;;;nested operations and pretty layout

(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))