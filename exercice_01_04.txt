The procedure determines which procedure to use (+ or -) depending on the value of the second parameter. If it is positive then + is used, else - is used.

Evaluation using the substitution model:

(a-plus-abs-b 10 20)
((if (> 20 0) + -) 10 20)
((if #t + -) 10 20)
(+ 10 20)
30

(a-plus-abs-b 10 -20)
((if (> -20 0) + -) 10 -20)
((if #f + -) 10 -20)
(- 10 -20)
30



