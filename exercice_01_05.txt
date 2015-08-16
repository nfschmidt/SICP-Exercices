With applicative order the expression will not end the evaluation process, because it will enter in an infinite loop trying to evaluate (p).

With normal order the expression will be evaluated to 0.


Normal order evaluation:
(test 0 (p))
(if (= 0 0) 0 (p))
(if #t 0 (p))
0


