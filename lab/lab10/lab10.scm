(define (over-or-under num1 num2) 
    'YOUR-CODE-HERE
    (cond ((< num1 num2) -1)
          ((= num1 num2) 0)
          (else 1)  
    )
)

(define (make-adder num) 'YOUR-CODE-HERE
    (define (add n)
        (+ num n)
    )
    add
)

(define (composed f g) 'YOUR-CODE-HERE
    (define (fun x)
        (f (g x))
    )
    fun
)

(define lst (list (list 1) 2 (list 3 4) 5))


(define (remove item lst) 'YOUR-CODE-HERE
    (cond 
        ((null? lst) nil)
        ((= item (car lst)) (remove item (cdr lst)))
        (else
            (cons (car lst) (remove item (cdr lst)))
        )
    )
)

;another solution
; (define (remove item lst)
;     (filter (lambda (x) (not (= x item))) lst)
;     )