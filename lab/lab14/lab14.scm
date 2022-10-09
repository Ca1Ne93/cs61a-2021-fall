(define (split-at lst n) 
    (define (split-at-initial init lst n)
        (if (or (zero? n) (null? lst))
            (cons init lst)
            (split-at-initial (append init (list (car lst))) (cdr lst) (- n 1)))
    )
    (split-at-initial () lst n)
)

(define (compose-all funcs)
    (define (outer n) 
        (define (compose-all-inner init funcs) 
            (if (null? funcs)
                init
                (compose-all-inner ((car funcs) init) (cdr funcs))))
        (compose-all-inner n funcs)
    )
    outer
)