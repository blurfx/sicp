(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; infinite loop!
;; applicative order evaluation => infinite loop
;; normal-order evaluation => 0
(test 0 (p))
