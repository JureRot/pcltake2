;;; numbers are self-evaluating objects in REPL
10

;;; this is a list of elements, first is name of function (addition), second and third are self evalueating objects
(+ 2 3)

;;; strings are also self-evaluationg objects
"hello, world"

;;; function that enables us to print
;;; t means to print to standard output, the object after that is the thing we want to print
(format t "hello, world")
;;; format function (in this case) evaluates to false/null, thus the NIL return

;;; defining a function
;;; (defun name varlist &rest body)
(defun hello-world () (format t "hello, world"))
;;; first element after defun is the name (convention is to use -) afther that is the paramter list (in this case empty) and after that comes the body of the function
;;; defun function evaluates to the name of the function (thus executing of defun will return the name of the newely defined function)

;;; calling the newely defined function
(hello-world)
;;; return is the same as executing the format function

;;; functions in common lisp automatically return the value of the last expression evaluated

;;; its customary to name common lisp source files with .lisp extention (.cl is used by some)

;;; function definition needs not be all inline
(defun hello-world-2 ()
  (format t "hello, world 2"))
(hello-world-2)

(defun hello-world ()
  (format t "Hello, world!"))
(hello-world)

;;; you can load a source file into REPL with (load "filename") function
;;; if loaded correcty, the expression will evaluate to T

;;; we can also first comple the source file to .fasl file and than load this fast-load file
;;; this can be donw with (load (compile-file "filename"))
