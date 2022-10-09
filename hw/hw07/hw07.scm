(define (cddr s) (cdr (cdr s)))

(define (cadr s) 'YOUR-CODE-HERE
    (car (cdr s))
)

(define (caddr s) 'YOUR-CODE-HERE
    (car (cdr (cdr s)))
)

(define (ordered? s) 'YOUR-CODE-HERE
    (cond ((null? (cdr s)) #t)
            ((> (car s) (cadr s)) #f)
            (else (ordered? (cdr s)))
    )
)

(define (square x) (* x x))

(define (pow base exp) 'YOUR-CODE-HERE
    (cond ( (or (= 0 exp) (= 1 base)) 1) 
            ( (= 0 (modulo exp 2)) (square (pow base (quotient exp 2) ) ) )
            ( else (* base (square (pow base (quotient exp 2) ) ) ) )
    )
)
