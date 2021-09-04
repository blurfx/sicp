(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; test cases; should be 5
(a-plus-abs-b 1 -4)
(a-plus-abs-b 1 4)
