(define (sqrt x)
  (sqrt-iter 0.0 1.0 x))


(define (sqrt-iter previous guess x)
  (if (good-enough? previous guess)
      guess
      (sqrt-iter guess
		 (improve guess x)
		 x)))


(define (good-enough? previous guess)
  (< (abs (- previous
	     guess))
     0.00000000001))


(define (improve guess x)
  (/ (+ guess
	(/ x guess))
     2))


