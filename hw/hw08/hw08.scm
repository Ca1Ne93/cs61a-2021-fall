(define (my-filter func lst) 
  (
    if (null? lst)
    nil
    (
      if (func (car lst))
      (cons  (car lst) (my-filter func (cdr lst)))
      (my-filter func (cdr lst))
    )
  )
)

(define (interleave s1 s2)
  (
    cond ((and (null? s1) (null? s2)) nil)
        ((and (not (null? s1))  (not (null? s2)))   (cons (car s1) (cons (car s2) (interleave (cdr s1) (cdr s2 )))) )
        ((null? s1) s2)
        ((null? s2) s1)
  )
)

(define (accumulate merger start n term)
  (if (= n 1) 
    (merger start (term n))
    (accumulate merger (merger start (term n)) (- n 1) term)
  )
)

(define (no-repeats lst)
  (
    if (null? lst)
    nil
    (cons (car lst)  (no-repeats (my-filter (lambda (x) (not(= x (car lst)))) (cdr lst))))
  )
)