(in-package :portfolio-web)

(defvar *server* nil)

(defvar *port* 4242)

(defparameter +base.html+ nil)

(defun load-templates ()
  (djula:add-template-directory (pathname "/home/rhonlicsi/src/website/templates/"))
  (setf +base.html+ (djula:compile-template* "base.html")))

(defun start ()
  (setf *server* (make-instance 'easy-routes:easy-routes-acceptor
				:port *port*))
  (hunchentoot:start *server*))

(defun stop ()
  (hunchentoot:stop *server*))

(easy-routes:defroute route-index ("/" :method :get) ()
    (djula:render-template* +base.html+ nil))
