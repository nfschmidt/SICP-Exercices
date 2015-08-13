(define (square x)
  (* x x))


(define (sum-of-squares x y)
  (+ (square x) (square y)))


(define (greatest x y z)
  (cond ((and (> x y) (> x z)) x)
	((and (> y x) (> y z)) y)
	(else z)))


(define (is-in-the-middle x y z)
  (or (and (> x y) (< x z))
      (and (> x z) (< x y))))


(define (second-greatest x y z)
  (cond ((is-in-the-middle x y z) x)
	((is-in-the-middle y x z) y)
	(else z)))


(define (sum-of-squares-of-two-larger x y z)
  (sum-of-squares (greatest x y z)
		  (second-greatest x y z)))
