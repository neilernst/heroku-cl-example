(in-package :net.aserve)

(publish :path "/"
	 :function #'(lambda (req ent)
		       (with-http-response (req ent)
			 (with-http-body (req ent)
			   (html
			    (:h1 "Hello World")
			    (:princ "Congratulations, you are running Lisp on Heroku!!!")
			    :p
			    ((:img :src "http://www.normal-null.de/img/lisp/glossy120.jpg"))
			    )))))

(publish-directory
 :prefix "/"
 :destination "./public/"
 )

		   



