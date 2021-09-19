(define (square n) (* n n))

(define (even? n)  (= (remainder n 2) 0)

(define (fast-expt b n)
		    (define (fast-expt-iter b a n)
				        (cond ((= n 0) a)
				              ((even? n) (fast-expt-iter (square b) a (/ n 2)))
				              (else (fast-expt-iter b (* b a) (- n 1)))))
		    (fast-expt-iter b 1 n))
