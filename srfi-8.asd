;;;; srfi-8.asd

(cl:in-package :asdf)

(defsystem :srfi-8
  :version "1"
  :description "SRFI 8: receive: Binding to multiple values"
  :long-description "SRFI 8: receive: Binding to multiple values
https://srfi.schemers.org/srfi-8"
  :author "CHIBA Masaomi"
  :maintainer "CHIBA Masaomi"
  :license "Unlicense"
  :serial t
  :components ((:file "package")
               (:file "srfi-8")))

(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-8))))
  (let ((name "https://github.com/g000001/srfi-8")
        (nickname :srfi-8))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))

