(define identity (lambda (x) x))
(define sum3 (lambda (x y z) (+ x y z)))
(define twice (lambda (x) (* 2 x)))
(define repeat (lambda (f) (lambda (y) (f (f y)))))
(define verbose (lambda (f) (lambda (y) (f y))))
(define hold (lambda (y) (lambda (f) (f y))))

;; Lambda Tests
;; (sum3 10 20 30)
;; (sum3 10 (* 2 10) 30)
;; (sum3 (* 2 5) (* 2 10) 30)
;; (identity 5)
;; (identity (identity 5))
;; ((verbose identity) 5)
;; ((verbose (verbose identity)) 5)
;; (twice (identity 5))
;; (twice ((verbose identity) 5))
;; ((repeat identity) 5)
;; ((repeat twice) 5)
;; ((repeat (repeat twice)) 5)
;; ((repeat twice) ((repeat identity) 5))
((hold 5) identity)

;; ;; Conditional Tests
;; (if #t 5 0)
;; (if #f 5 0)
;; (if #t 5)
;; (if #f 5)
;; (if #t (+ 2 2))
;; (identity (if #t 5))
;; (identity (twice (if #t 5)))
;; ((if #t (verbose identity)) 5)
;; ((verbose (verbose (if #t identity))) 5)
