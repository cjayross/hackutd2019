(define identity (lambda (x) x))
(define twice (lambda (x) (* 2 x)))
(define repeat (lambda (f) (lambda (y) (f (f y)))))
(define verbose (lambda (f) (lambda (y) (f y))))
((verbose (if #t identity)) 5)
