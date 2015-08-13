(define (square x)
  (* x x))


(define (sum-of-squares x y)
  (+ (square x) (square y)))


(define (greater x y)
  (if (> x y)
      x
      y))


(define (sum-of-squares-of-number-and-greater x y z)
  (sum-of-squares x (greater y z)))


(define (sum-of-squares-of-two-larger x y z)
  (cond ((and (> x y) (> x z)) (sum-of-squares-of-number-and-greater x y z))
	((and (> y x) (> y z)) (sum-of-squares-of-number-and-greater y x z))
	(else (sum-of-squares-of-number-and-greater z x y))))
