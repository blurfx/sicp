(define (double x) (+ x x))

(define (halve x) (/ x 2))

(define (multi a b x)
    (cond ((= b 0) x)
          ((even? b) (multi (double a) (halve b) x))
          (else (multi a (- b 1) (+ a x)))))

(define (* a b) (multi a b 0))
