(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

; Some utility functions that you may find useful to implement.
(define (map fn lst)
  (if (null? lst)
      nil
      (cons (fn (car lst)) (map fn (cdr lst)))))

(define (cons-all first rests)
        (if (equal? rest nil) nil
            (cons (cons first (car rests))
                  (cons-all first (cdr rests))
            )
        )
)

(define (zip pairs)
  'replace-this-line)

;; Problem 17
;; Returns a list of two-element lists

(define (helper lst a)
        (if (equal? (cdr lst) nil) (cons (cons a (cons (car lst) nil)) nil)
            (cons (cons a (cons (car lst) nil))
                  (helper (cdr lst) (+ a 1))
            )
        )
)

(define (enumerate s)
  ; BEGIN PROBLEM 17
  (if (equal? s nil) ()
      (helper s 0)
  )
)
  ; END PROBLEM 17

;; Problem 18
;; List all ways to make change for TOTAL with DENOMS





(define (list-change total denoms)

  (cond ((= total 0) (cons nil nil))
        ((< total 0) nil)
        ((null? denoms) nil)
        (else (define already (list-change (- total (car denoms)) denoms))
              (define new-added (lambda (s) (cons (car denoms) s) ) )
              (define w (map new-added already) )
              (define wo (list-change total (cdr denoms)))
              (append w wo)
        )
  )
)



  ; END PROBLEM 18

;; Problem 19
;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))
(define (get-pram values)
        (if (null? values) nil
            (cons (caar values)
                  (get-pram (cdr values))
            )
        )
)

(define (get-args values)
        (if (null? values) nil
            (cons (let-to-lambda (cadr (car values)))
                  (get-args (cdr values))
            )
        )
)

(define (get-body body)
        (if (null? (cdr body)) (cons (let-to-lambda (car body)) nil)
            (cons (car body) (get-body (cdr body)))
        )
)

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         expr
         )
        ((quoted? expr)
         expr
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           (cons form (cons params (get-body body)))
           ))
        ((and (let? expr) (Pair? (cadr expr)))
         (define values (cadr expr))
         (define body (cddr expr))
         (let ((prams (get-pram values))
               (args (get-args values))
              )
              (cons (cons 'lambda (cons prams (get-body body)))
                    args
              )
          )
        )
        (else
         (cons (let-to-lambda (car expr)) (let-to-lambda (cdr expr)))
         )))
