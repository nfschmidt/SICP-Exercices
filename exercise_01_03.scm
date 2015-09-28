(define (square x)
  (* x x))


(define (sum-of-squares x y)
  (+ (square x) (square y)))


(define (larger x y)
  (if (> x y)
      x
      y))


(define (sum-of-squares-of-two-larger x y z)
  (if (> x y)
      (sum-of-squares x (larger y z))
      (sum-of-squares y (larger x z))))

