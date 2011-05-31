;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :srfi-8
  (:export :receive))

(defpackage :srfi-8-internal
  (:use :srfi-8 :cl :fiveam))

