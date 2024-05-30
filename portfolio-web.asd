(in-package :asdf-user)

(defsystem "portfolio-web"
  :version "0.1.0"
  :author "rhon"
  :depends-on (hunchentoot
	       easy-routes
	       str
	       djula
	       )
  :components ((:file "portfolio-web")
	       (:file "packages")))
