;;;; srfi-8.lisp

(cl:in-package :srfi-8-internal)

(def-suite srfi-8)

(in-suite srfi-8)

(setf (macro-function 'receive)
      (macro-function 'multiple-value-bind))

