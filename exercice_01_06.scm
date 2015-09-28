;
; sqrt-iter will not finish the evaluation process, it will enter in an infinite loop.
; This will happen because the function new-if will evaluate all of its parameters, which results in each application of sqrt-iter to call itself again.
; Using the special form if, will only evaluate the value of the expression to be returned.
