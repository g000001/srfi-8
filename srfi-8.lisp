;;;; srfi-8.lisp

(cl:in-package "https://github.com/g000001/srfi-8#internals")


(defmacro receive ((&rest vars) vals &body body)
  `(multiple-value-call (lambda (,@vars) ,@body)
     ,vals))

#||
(receive (x y z) (values 0 1 2 ) (list x y z))
→ (0 1 2)

(receive (x y z) (values 0 1) (list x y z))
→  #.#'(lambda (x y z) (list x y z)) got 2 args, wanted at least 3.
||#
