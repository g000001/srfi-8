;;;; srfi-8.asd

(cl:in-package :asdf)

(defsystem :srfi-8
  :serial t
  :components ((:file "package")
               (:file "srfi-8")))

(defmethod perform ((o test-op) (c (eql (find-system :srfi-8))))
  (load-system :srfi-8)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :srfi-8-internal :srfi-8))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))

