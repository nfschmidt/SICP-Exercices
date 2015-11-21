
(define (cube-root x)
  (cube-root-iter 2.0 1.0 x))

(define (cube-root-iter previous guess x)
  (if (good-enough? previous guess)
      guess
      (cube-root-iter guess
		      (improve-guess guess x)
		      x)))

(define (improve-guess guess x)
  (/ (+ (/ x (* guess guess))
	(* 2 guess))
     3))

(define (good-enough? previous guess)
  (< (abs (- previous guess))
     0.000001))
