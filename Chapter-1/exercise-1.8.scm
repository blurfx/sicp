(define (square x) (* x x))
(define (cube x) (* x x x))

(define (average x y) (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (improve guess x)
  (average x guess))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.0000001))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))

(define (cube-root x) (cube-root-iter 1.0 x))


(cube-root 23450)
