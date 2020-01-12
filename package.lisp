;;;; package.lisp

(cl:in-package #:cl-user)

(defpackage "https://github.com/g000001/srfi-8"
  (:export #:receive))

(defpackage "https://github.com/g000001/srfi-8#internals"
  (:use "https://github.com/g000001/srfi-8" #:cl))

