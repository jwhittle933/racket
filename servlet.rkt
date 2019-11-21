#lang racket

(require web-server/servlet
         web-server/servlet-env)

(define (hellp req)
  (response/xexpr
   '(html (head (title "Hello World"))
          (body (p ("Hey out there"))))))

(serve/servlet hello
               #:listen-tp #f
               #:servlet-path "/hello")

(define (oh-boy req)
  (response/xexpr
   '(html (head (title "Oh Boy"))
          (body (p "This is the oh boy page")))))

(serve/servlet oh-boy
               #:listen-tp #f
               #:servlet-path "/ohboy")
