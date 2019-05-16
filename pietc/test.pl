(define twice (lambda (x) (* 2 x)))
(define repeat (lambda (f) (lambda (y) (f (f y)))))
;; (* 2 10)
;; (twice 10)
;; (twice (twice 10))
;; (repeat twice)
((repeat (repeat twice)) 10)
