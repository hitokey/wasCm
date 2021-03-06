;;; File: examples/test17.scm
(define (floopsum env ix sx facc)
    (if (null? sx) facc
        (floopsum env (- ix 1) (cdr sx)
              (+ (f(car sx)) facc)) ))

(define (floop env ix fy)
      (if (< ix 1) fy
          (floop env (- ix 1) (+ fy 0.1)) ))

(define (fadd fx fy) (+ fx fy))

(letrec
    [(xx 41.0)]
  (begin (display (fadd xx 12.5))
     (display (floop 1000000 0.0)) ))


