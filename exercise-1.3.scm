(define (max x y)
  (if (> x y)
      x
      y))

(define (square x) (* x x))

(define (sum-of-sqaure-of-two-largest-numbers x y z)
  (if (> x y)
      (+ (square x) (square (max y z)))
      (+ (square y) (square (max x z)))))

;; test cases; should be 13(2*2 + 3*3)
(sum-of-sqaure-of-two-largest-numbers 1 2 3)
(sum-of-sqaure-of-two-largest-numbers 3 1 2)
(sum-of-sqaure-of-two-largest-numbers 3 2 1)
